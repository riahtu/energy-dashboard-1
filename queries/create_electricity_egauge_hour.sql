create table electricity_egauge_hour (
	dataid integer, 
	localhour timestamp with time zone,
	use numeric, 
 	air1 numeric, 
 	air2 numeric, 
 	air3 numeric,  
 	airwindowunit1 numeric,  
 	aquarium1 numeric,  
 	bathroom1 numeric, 
 	bathroom2 numeric,  
 	bedroom1 numeric, 
 	bedroom2 numeric,  
 	bedroom3 numeric, 
 	bedroom4 numeric,  
 	bedroom5 numeric,  
 	car1 numeric,  
 	clotheswasher1 numeric,  
 	clotheswasher_dryg1 numeric, 
 	diningroom1 numeric, 
 	diningroom2 numeric, 
 	dishwasher1 numeric, 
 	disposal1 numeric, 
 	drye1 numeric, 
 	dryg1 numeric,  
 	freezer1 numeric,  
 	furnace1 numeric,  
 	furnace2 numeric,  
 	garage1 numeric, 
 	garage2 numeric,  
 	gen numeric, 
 	grid numeric, 
 	heater1 numeric, 
 	housefan1 numeric, 
 	icemaker1 numeric,  
 	jacuzzi1 numeric, 
 	kitchen1 numeric, 
 	kitchen2 numeric,  
 	kitchenapp1 numeric,  
 	kitchenapp2 numeric, 
 	lights_plugs1 numeric, 
 	lights_plugs2 numeric,  
 	lights_plugs3 numeric, 
 	lights_plugs4 numeric,  
 	lights_plugs5 numeric,  
 	lights_plugs6 numeric, 
 	livingroom1 numeric,  
 	livingroom2 numeric, 
 	microwave1 numeric, 
 	office1 numeric,  
 	outsidelights_plugs1 numeric,  
 	outsidelights_plugs2 numeric, 
 	oven1 numeric, 
 	oven2 numeric,  
 	pool1 numeric,  
 	pool2 numeric, 
 	poollight1 numeric, 
 	poolpump1 numeric, 
 	pump1 numeric,  
 	range1 numeric, 
 	refrigerator1 numeric,  
 	refrigerator2 numeric, 
 	security1 numeric, 
 	shed1 numeric, 
 	sprinkler1 numeric,  
 	unknown1 numeric,  
 	unknown2 numeric,  
 	unknown3 numeric,  
 	unknown4 numeric, 
 	utilityroom1 numeric, 
 	venthood1 numeric, 
 	waterheater1 numeric,  
 	waterheater2 numeric, 
 	winecooler1 numeric
);

create index electricity_egauge_hours_dataid_idx on electricity_egauge_hour using btree (dataid);

create index electricity_egauge_hours_dataid_localhour_use_idx on electricity_egauge_hour using btree (dataid, localhour DESC NULLS LAST, use);

create index electricity_egauge_hours_localhour_idx on electricity_egauge_hour using btree (localhour DESC NULLS LAST);
