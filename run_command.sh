# python bonus/assess.py --input_dir "/eos/user/z/zhenxuan/hhwwgg" --plots "/afs/cern.ch/user/z/zhenxuan/HiggsDNA/config_plots/plot_dataMC.json"
# python scripts/run_analysis.py --log-level "DEBUG" --config "metadata/tutorial/HHWW_preselection.json" --merge_outputs --sample_list "GluGluToRadionToHHTo2G4Q_M300"   --output_dir "/eos/user/z/zhenxuan/hhwwgg_2" --short --batch_system "condor"
python scripts/run_analysis.py --log-level "DEBUG" --config "metadata/tutorial/HHWW_preselection.json" --merge_outputs --sample_list   "GluGluToRadionToHHTo2G4Q_M250","GluGluToRadionToHHTo2G4Q_M260","GluGluToRadionToHHTo2G4Q_M270","GluGluToRadionToHHTo2G4Q_M280","GluGluToRadionToHHTo2G4Q_M300","GluGluToRadionToHHTo2G4Q_M320","GluGluToRadionToHHTo2G4Q_M350","GluGluToRadionToHHTo2G4Q_M400","GluGluToRadionToHHTo2G4Q_M450","GluGluToRadionToHHTo2G4Q_M500","GluGluToRadionToHHTo2G4Q_M550","GluGluToRadionToHHTo2G4Q_M600","GluGluToRadionToHHTo2G4Q_M650","GluGluToRadionToHHTo2G4Q_M700","GluGluToRadionToHHTo2G4Q_M750","GluGluToRadionToHHTo2G4Q_M800","GluGluToRadionToHHTo2G4Q_M850","GluGluToRadionToHHTo2G4Q_M900","GluGluToRadionToHHTo2G4Q_M1000","GluGluToRadionToHHTo2G4Q_M1250","GluGluToRadionToHHTo2G4Q_M1750","GluGluToRadionToHHTo2G4Q_M2000","GluGluToRadionToHHTo2G4Q_M2500","GluGluToRadionToHHTo2G4Q_M3000","ttHJetToGG_M125","TTToHadronic","TTGG_0Jets","TTGJets","DiPhotonJetsBox_MGG","DiPhotonJetsBox_M40","DiPhotonJetsBox_M40_ext2","GJet_Pt-20to40","GJet_Pt-40toInf","QCD_HT50to100","QCD_HT100to200","QCD_HT200to300","QCD_HT300to500","QCD_HT500to700","QCD_HT700to1000","QCD_HT1000to1500","QCD_HT1500to2000","QCD_HT2000toInf"  --output_dir "/eos/user/z/zhenxuan/hhwwgg3" --short --batch_system "condor"
