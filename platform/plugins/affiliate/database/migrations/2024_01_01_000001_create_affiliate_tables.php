<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('ec_affiliates', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('affiliate_code', 50)->unique();
            $table->decimal('commission_rate', 5, 2)->default(5.00);
            $table->enum('status', ['active', 'inactive', 'suspended'])->default('active');
            $table->decimal('total_earnings', 15, 2)->default(0);
            $table->decimal('paid_earnings', 15, 2)->default(0);
            $table->decimal('pending_earnings', 15, 2)->default(0);
            $table->timestamps();
            
            $table->foreign('user_id')->references('id')->on('ec_customers')->onDelete('cascade');
        });

        Schema::create('ec_affiliate_commissions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('affiliate_id');
            $table->unsignedBigInteger('order_id');
            $table->decimal('commission_amount', 10, 2);
            $table->enum('status', ['pending', 'approved', 'paid', 'cancelled'])->default('pending');
            $table->timestamps();
            
            $table->foreign('affiliate_id')->references('id')->on('ec_affiliates')->onDelete('cascade');
            $table->foreign('order_id')->references('id')->on('ec_orders')->onDelete('cascade');
        });

        Schema::create('ec_affiliate_referrals', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('affiliate_id');
            $table->string('visitor_ip', 45);
            $table->text('user_agent')->nullable();
            $table->text('referrer_url')->nullable();
            $table->text('landing_page')->nullable();
            $table->boolean('converted')->default(false);
            $table->unsignedBigInteger('order_id')->nullable();
            $table->timestamps();
            
            $table->foreign('affiliate_id')->references('id')->on('ec_affiliates')->onDelete('cascade');
            $table->foreign('order_id')->references('id')->on('ec_orders')->onDelete('set null');
        });
    }

    public function down()
    {
        Schema::dropIfExists('ec_affiliate_referrals');
        Schema::dropIfExists('ec_affiliate_commissions');
        Schema::dropIfExists('ec_affiliates');
    }
};