python "C:\Program Files (x86)\DLR\Sumo\tools\ptlines2flows.py" -n osm.net.xml -e 3600 -p 600 --random-begin --seed 42 --ptstops osm_stops.add.xml --ptlines osm_ptlines.xml -o osm_pt.rou.xml --ignore-errors --vtype-prefix pt_ --flow-attributes departPos=\"0\"
python "C:\Program Files (x86)\DLR\Sumo\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 1 -p 29.514148 -r osm.pedestrian.rou.xml -o osm.pedestrian.trips.xml -e 3600 --vehicle-class pedestrian --persontrips --prefix ped --trip-attributes speedDev=\"0.1\" modes=\"public\" --additional-files osm_stops.add.xml,osm_pt.rou.xml
python "C:\Program Files (x86)\DLR\Sumo\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 2 -p 63.796260 -r osm.bicycle.rou.xml -o osm.bicycle.trips.xml -e 3600 --vehicle-class bicycle --vclass bicycle --prefix bike --max-distance 8000 --trip-attributes speedDev=\"0.1\" departLane=\"best\" --validate
python "C:\Program Files (x86)\DLR\Sumo\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 2 -p 132.883890 -r osm.motorcycle.rou.xml -o osm.motorcycle.trips.xml -e 3600 --vehicle-class motorcycle --vclass motorcycle --prefix moto --max-distance 1200 --trip-attributes speedDev=\"0.1\" departLane=\"best\" --validate
python "C:\Program Files (x86)\DLR\Sumo\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 5 -p 44.294630 -r osm.passenger.rou.xml -o osm.passenger.trips.xml -e 3600 --vehicle-class passenger --vclass passenger --prefix veh --min-distance 300 --trip-attributes speedDev=\"0.1\" departLane=\"best\" --validate
python "C:\Program Files (x86)\DLR\Sumo\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 5 -p 66.441945 -r osm.truck.rou.xml -o osm.truck.trips.xml -e 3600 --vehicle-class truck --vclass truck --prefix truck --min-distance 600 --trip-attributes speedDev=\"0.1\" departLane=\"best\" --validate
python "C:\Program Files (x86)\DLR\Sumo\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 5 -p 132.883890 -r osm.bus.rou.xml -o osm.bus.trips.xml -e 3600 --vehicle-class bus --vclass bus --prefix bus --min-distance 600 --trip-attributes departLane=\"best\" --validate
python "C:\Program Files (x86)\DLR\Sumo\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 20 -p 1136.945029 -r osm.tram.rou.xml -o osm.tram.trips.xml -e 3600 --vehicle-class tram --vclass tram --prefix tram --min-distance 1200 --trip-attributes departLane=\"best\" --validate
python "C:\Program Files (x86)\DLR\Sumo\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 40 -p 481.707170 -r osm.rail.rou.xml -o osm.rail.trips.xml -e 3600 --vehicle-class rail --vclass rail --prefix rail --min-distance 2400 --trip-attributes departLane=\"best\" --validate
