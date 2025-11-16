<?php

namespace App\Console\Commands;

use Botble\Location\Services\ImportLocationService;
use Botble\Location\Enums\ImportType;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Console\Command;

class ImportLocationsCommand extends Command
{
    protected $signature = 'locations:import {--file= : JSON file path}';
    protected $description = 'Import locations from JSON file or predefined data';

    public function handle(): int
    {
        $filePath = $this->option('file');
        
        if ($filePath && file_exists($filePath)) {
            $data = json_decode(file_get_contents($filePath), true);
        } else {
            $data = $this->getDefaultLocations();
        }

        $importService = new ImportLocationService();
        $importService->handle($data);

        $this->info("Successfully imported {$importService->count()} locations!");
        
        return self::SUCCESS;
    }

    private function getDefaultLocations(): array
    {
        $locations = [
            'United States' => ['nationality' => 'American', 'states' => ['California' => ['Los Angeles', 'San Francisco'], 'New York' => ['New York City', 'Buffalo'], 'Texas' => ['Houston', 'Dallas']]],
            'Canada' => ['nationality' => 'Canadian', 'states' => ['Ontario' => ['Toronto', 'Ottawa'], 'Quebec' => ['Montreal', 'Quebec City'], 'British Columbia' => ['Vancouver', 'Victoria']]],
            'United Kingdom' => ['nationality' => 'British', 'states' => ['England' => ['London', 'Manchester'], 'Scotland' => ['Edinburgh', 'Glasgow'], 'Wales' => ['Cardiff', 'Swansea']]],
            'Germany' => ['nationality' => 'German', 'states' => ['Bavaria' => ['Munich', 'Nuremberg'], 'North Rhine-Westphalia' => ['Cologne', 'Düsseldorf'], 'Berlin' => ['Berlin']]],
            'France' => ['nationality' => 'French', 'states' => ['Île-de-France' => ['Paris', 'Versailles'], 'Provence-Alpes-Côte d\'Azur' => ['Marseille', 'Nice'], 'Auvergne-Rhône-Alpes' => ['Lyon', 'Grenoble']]],
            'Australia' => ['nationality' => 'Australian', 'states' => ['New South Wales' => ['Sydney', 'Newcastle'], 'Victoria' => ['Melbourne', 'Geelong'], 'Queensland' => ['Brisbane', 'Gold Coast']]],
            'Japan' => ['nationality' => 'Japanese', 'states' => ['Tokyo' => ['Tokyo', 'Shibuya'], 'Osaka' => ['Osaka', 'Sakai'], 'Kanagawa' => ['Yokohama', 'Kawasaki']]],
            'China' => ['nationality' => 'Chinese', 'states' => ['Beijing' => ['Beijing', 'Chaoyang'], 'Shanghai' => ['Shanghai', 'Pudong'], 'Guangdong' => ['Guangzhou', 'Shenzhen']]],
            'India' => ['nationality' => 'Indian', 'states' => ['Maharashtra' => ['Mumbai', 'Pune'], 'Delhi' => ['New Delhi', 'Gurgaon'], 'Karnataka' => ['Bangalore', 'Mysore']]],
            'Brazil' => ['nationality' => 'Brazilian', 'states' => ['São Paulo' => ['São Paulo', 'Campinas'], 'Rio de Janeiro' => ['Rio de Janeiro', 'Niterói'], 'Minas Gerais' => ['Belo Horizonte', 'Uberlândia']]],
            'Russia' => ['nationality' => 'Russian', 'states' => ['Moscow Oblast' => ['Moscow', 'Podolsk'], 'Saint Petersburg' => ['Saint Petersburg', 'Pushkin'], 'Sverdlovsk Oblast' => ['Yekaterinburg', 'Nizhny Tagil']]],
            'Italy' => ['nationality' => 'Italian', 'states' => ['Lombardy' => ['Milan', 'Bergamo'], 'Lazio' => ['Rome', 'Latina'], 'Campania' => ['Naples', 'Salerno']]],
            'Spain' => ['nationality' => 'Spanish', 'states' => ['Madrid' => ['Madrid', 'Móstoles'], 'Catalonia' => ['Barcelona', 'Hospitalet'], 'Andalusia' => ['Seville', 'Málaga']]],
            'Mexico' => ['nationality' => 'Mexican', 'states' => ['Mexico City' => ['Mexico City', 'Ecatepec'], 'Jalisco' => ['Guadalajara', 'Zapopan'], 'Nuevo León' => ['Monterrey', 'Guadalupe']]],
            'South Korea' => ['nationality' => 'Korean', 'states' => ['Seoul' => ['Seoul', 'Gangnam'], 'Busan' => ['Busan', 'Haeundae'], 'Gyeonggi' => ['Suwon', 'Goyang']]],
            'Indonesia' => ['nationality' => 'Indonesian', 'states' => ['Jakarta' => ['Jakarta', 'Bekasi'], 'West Java' => ['Bandung', 'Bogor'], 'East Java' => ['Surabaya', 'Malang']]],
            'Turkey' => ['nationality' => 'Turkish', 'states' => ['Istanbul' => ['Istanbul', 'Kadıköy'], 'Ankara' => ['Ankara', 'Çankaya'], 'Izmir' => ['Izmir', 'Konak']]],
            'Netherlands' => ['nationality' => 'Dutch', 'states' => ['North Holland' => ['Amsterdam', 'Haarlem'], 'South Holland' => ['The Hague', 'Rotterdam'], 'Utrecht' => ['Utrecht', 'Amersfoort']]],
            'Belgium' => ['nationality' => 'Belgian', 'states' => ['Brussels' => ['Brussels', 'Schaerbeek'], 'Flanders' => ['Antwerp', 'Ghent'], 'Wallonia' => ['Charleroi', 'Liège']]],
            'Switzerland' => ['nationality' => 'Swiss', 'states' => ['Zurich' => ['Zurich', 'Winterthur'], 'Bern' => ['Bern', 'Thun'], 'Geneva' => ['Geneva', 'Vernier']]],
            'Austria' => ['nationality' => 'Austrian', 'states' => ['Vienna' => ['Vienna', 'Graz'], 'Tyrol' => ['Innsbruck', 'Kufstein'], 'Salzburg' => ['Salzburg', 'Hallein']]],
            'Sweden' => ['nationality' => 'Swedish', 'states' => ['Stockholm' => ['Stockholm', 'Göteborg'], 'Västra Götaland' => ['Gothenburg', 'Borås'], 'Skåne' => ['Malmö', 'Helsingborg']]],
            'Norway' => ['nationality' => 'Norwegian', 'states' => ['Oslo' => ['Oslo', 'Bærum'], 'Hordaland' => ['Bergen', 'Stavanger'], 'Trøndelag' => ['Trondheim', 'Steinkjer']]],
            'Denmark' => ['nationality' => 'Danish', 'states' => ['Capital Region' => ['Copenhagen', 'Frederiksberg'], 'Central Denmark' => ['Aarhus', 'Randers'], 'Southern Denmark' => ['Odense', 'Esbjerg']]],
            'Finland' => ['nationality' => 'Finnish', 'states' => ['Uusimaa' => ['Helsinki', 'Espoo'], 'Pirkanmaa' => ['Tampere', 'Nokia'], 'Northern Ostrobothnia' => ['Oulu', 'Raahe']]],
            'Poland' => ['nationality' => 'Polish', 'states' => ['Masovian' => ['Warsaw', 'Radom'], 'Lesser Poland' => ['Kraków', 'Tarnów'], 'Silesian' => ['Katowice', 'Częstochowa']]],
            'Czech Republic' => ['nationality' => 'Czech', 'states' => ['Prague' => ['Prague', 'Kladno'], 'South Moravian' => ['Brno', 'Znojmo'], 'Moravian-Silesian' => ['Ostrava', 'Karviná']]],
            'Hungary' => ['nationality' => 'Hungarian', 'states' => ['Budapest' => ['Budapest', 'Debrecen'], 'Pest' => ['Szentendre', 'Vác'], 'Bács-Kiskun' => ['Kecskemét', 'Baja']]],
            'Portugal' => ['nationality' => 'Portuguese', 'states' => ['Lisbon' => ['Lisbon', 'Sintra'], 'Porto' => ['Porto', 'Vila Nova de Gaia'], 'Braga' => ['Braga', 'Guimarães']]],
            'Greece' => ['nationality' => 'Greek', 'states' => ['Attica' => ['Athens', 'Piraeus'], 'Central Macedonia' => ['Thessaloniki', 'Serres'], 'Crete' => ['Heraklion', 'Chania']]],
            'Ireland' => ['nationality' => 'Irish', 'states' => ['Leinster' => ['Dublin', 'Kilkenny'], 'Munster' => ['Cork', 'Limerick'], 'Connacht' => ['Galway', 'Sligo']]],
            'South Africa' => ['nationality' => 'South African', 'states' => ['Gauteng' => ['Johannesburg', 'Pretoria'], 'Western Cape' => ['Cape Town', 'Stellenbosch'], 'KwaZulu-Natal' => ['Durban', 'Pietermaritzburg']]],
            'Egypt' => ['nationality' => 'Egyptian', 'states' => ['Cairo' => ['Cairo', 'Giza'], 'Alexandria' => ['Alexandria', 'Damanhur'], 'Giza' => ['Giza', '6th of October City']]],
            'Nigeria' => ['nationality' => 'Nigerian', 'states' => ['Lagos' => ['Lagos', 'Ikeja'], 'Kano' => ['Kano', 'Wudil'], 'Rivers' => ['Port Harcourt', 'Obio-Akpor']]],
            'Kenya' => ['nationality' => 'Kenyan', 'states' => ['Nairobi' => ['Nairobi', 'Kiambu'], 'Mombasa' => ['Mombasa', 'Kilifi'], 'Nakuru' => ['Nakuru', 'Naivasha']]],
            'Morocco' => ['nationality' => 'Moroccan', 'states' => ['Casablanca-Settat' => ['Casablanca', 'Settat'], 'Rabat-Salé-Kénitra' => ['Rabat', 'Salé'], 'Marrakesh-Safi' => ['Marrakesh', 'Safi']]],
            'Argentina' => ['nationality' => 'Argentine', 'states' => ['Buenos Aires' => ['Buenos Aires', 'La Plata'], 'Córdoba' => ['Córdoba', 'Villa María'], 'Santa Fe' => ['Rosario', 'Santa Fe']]],
            'Chile' => ['nationality' => 'Chilean', 'states' => ['Santiago Metropolitan' => ['Santiago', 'Puente Alto'], 'Valparaíso' => ['Valparaíso', 'Viña del Mar'], 'Biobío' => ['Concepción', 'Talcahuano']]],
            'Colombia' => ['nationality' => 'Colombian', 'states' => ['Bogotá' => ['Bogotá', 'Soacha'], 'Antioquia' => ['Medellín', 'Bello'], 'Valle del Cauca' => ['Cali', 'Palmira']]],
            'Peru' => ['nationality' => 'Peruvian', 'states' => ['Lima' => ['Lima', 'Callao'], 'La Libertad' => ['Trujillo', 'Chepén'], 'Arequipa' => ['Arequipa', 'Camaná']]],
            'Venezuela' => ['nationality' => 'Venezuelan', 'states' => ['Capital District' => ['Caracas', 'Chacao'], 'Miranda' => ['Los Teques', 'Guarenas'], 'Zulia' => ['Maracaibo', 'San Francisco']]],
            'Thailand' => ['nationality' => 'Thai', 'states' => ['Bangkok' => ['Bangkok', 'Nonthaburi'], 'Chiang Mai' => ['Chiang Mai', 'Lamphun'], 'Phuket' => ['Phuket', 'Kathu']]],
            'Vietnam' => ['nationality' => 'Vietnamese', 'states' => ['Hanoi' => ['Hanoi', 'Hai Phong'], 'Ho Chi Minh City' => ['Ho Chi Minh City', 'Thu Duc'], 'Da Nang' => ['Da Nang', 'Hoi An']]],
            'Philippines' => ['nationality' => 'Filipino', 'states' => ['Metro Manila' => ['Manila', 'Quezon City'], 'Cebu' => ['Cebu City', 'Mandaue'], 'Davao' => ['Davao City', 'Tagum']]],
            'Malaysia' => ['nationality' => 'Malaysian', 'states' => ['Selangor' => ['Kuala Lumpur', 'Petaling Jaya'], 'Johor' => ['Johor Bahru', 'Skudai'], 'Penang' => ['George Town', 'Butterworth']]],
            'Singapore' => ['nationality' => 'Singaporean', 'states' => ['Central Region' => ['Singapore', 'Orchard'], 'East Region' => ['Tampines', 'Bedok'], 'West Region' => ['Jurong', 'Clementi']]]
        ];

        $data = [];
        
        foreach ($locations as $countryName => $countryData) {
            // Add country
            $data[] = [
                'import_type' => ImportType::COUNTRY,
                'name' => $countryName,
                'nationality' => $countryData['nationality'],
                'status' => BaseStatusEnum::PUBLISHED,
            ];
            
            // Add states and cities
            foreach ($countryData['states'] as $stateName => $cities) {
                $data[] = [
                    'import_type' => ImportType::STATE,
                    'name' => $stateName,
                    'country' => $countryName,
                    'status' => BaseStatusEnum::PUBLISHED,
                ];
                
                foreach ($cities as $cityName) {
                    $data[] = [
                        'import_type' => ImportType::CITY,
                        'name' => $cityName,
                        'country' => $countryName,
                        'state' => $stateName,
                        'status' => BaseStatusEnum::PUBLISHED,
                    ];
                }
            }
        }
        
        return $data;
    }
}