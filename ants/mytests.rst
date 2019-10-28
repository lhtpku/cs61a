This file holds the tests that you create. Remember to import the python file(s)
you wish to test, along with any other modules you may need.
Run your tests with "python3 ok -t --suite SUITE_NAME --case CASE_NAME -v"
--------------------------------------------------------------------------------

Suite 1

	>>> import ants, importlib
	>>> importlib.reload(ants)
	>>> beehive = ants.Hive(ants.AssaultPlan())
	>>> dimensions = (2, 9)
	>>> colony = ants.AntColony(None, beehive, ants.ant_types(),
	...         ants.dry_layout, dimensions)
	>>> #
	>>> # Adding/Removing QueenAnt with Container
	>>> place = colony.places['tunnel_0_3']
	>>> queen = ants.QueenAnt()
	>>> impostor = ants.QueenAnt()
	>>> container = ants.TankAnt()
	>>> place.add_insect(container)
	>>> place.add_insect(impostor)
	>>> impostor.action(colony)
	>>> place.ant is container
	True
	>>> container.place is place
	True
	>>> container.contained_ant is None
	True
	>>> impostor.place is None
	True
	>>> place.add_insect(queen)
	>>> place.remove_insect(queen)
	>>> container.contained_ant is queen
	True
	>>> queen.place is place
	True

