int G4_Lepto()
{
	cout << "G4 Lepto Loaded!!!" << endl;

	cout << "**************************************" << endl;
	Fun4AllServer *se = Fun4AllServer::instance();
	LeptoquarksReco *mcana2 = new LeptoquarksReco("./LeptoAna.root");
	mcana2->set_beam_energies(10,250);
	se->registerSubsystem( mcana2 );
	cout << "**************************************" << endl;

	return 0;
}
