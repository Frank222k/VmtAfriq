<?php

require_once 'bootstrap/app.php';

use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\Location\Models\City;
use Botble\Base\Enums\BaseStatusEnum;

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
    'Singapore' => ['nationality' => 'Singaporean', 'states' => ['Central Region' => ['Singapore', 'Orchard'], 'East Region' => ['Tampines', 'Bedok'], 'West Region' => ['Jurong', 'Clementi']]],
];

$count = 0;

foreach ($locations as $countryName => $countryData) {
    $country = Country::create([
        'name' => $countryName,
        'nationality' => $countryData['nationality'],
        'status' => BaseStatusEnum::PUBLISHED,
    ]);
    $count++;
    
    foreach ($countryData['states'] as $stateName => $cities) {
        $state = State::create([
            'name' => $stateName,
            'country_id' => $country->id,
            'status' => BaseStatusEnum::PUBLISHED,
        ]);
        $count++;
        
        foreach ($cities as $cityName) {
            City::create([
                'name' => $cityName,
                'country_id' => $country->id,
                'state_id' => $state->id,
                'status' => BaseStatusEnum::PUBLISHED,
            ]);
            $count++;
        }
    }
}

echo "Successfully imported $count locations!\n";