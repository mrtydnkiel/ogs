AddTest(
    NAME RichardsMechanics_square_1e2_gravity
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS gravity.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB gravity_pcs_0_ts_*.vtu displacement displacement 1e-15 0
    GLOB gravity_pcs_0_ts_*.vtu sigma sigma 5e-10 0
    GLOB gravity_pcs_0_ts_*.vtu epsilon epsilon 1e-15 0
    GLOB gravity_pcs_0_ts_*.vtu pressure pressure 0 2e-2
    GLOB gravity_pcs_0_ts_*.vtu velocity velocity 1e-7 1e-15
    GLOB gravity_pcs_0_ts_*.vtu HydraulicFlow HydraulicFlow 1e-5 0
    GLOB gravity_pcs_0_ts_*.vtu NodalForces NodalForces 2e-10 0
    GLOB gravity_pcs_0_ts_24_t_5.000000.vtu pressure pressure 1e-4 1e-15
)

AddTest(
    NAME RichardsMechanics_square_1e2_mechanics_linear
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS mechanics_linear.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB mechanics_linear_pcs_0_ts_*.vtu displacement displacement 1e-15 0
    GLOB mechanics_linear_pcs_0_ts_*.vtu sigma sigma 5e-15 0
    GLOB mechanics_linear_pcs_0_ts_*.vtu epsilon epsilon 5e-15 0
    GLOB mechanics_linear_pcs_0_ts_*.vtu pressure pressure 1e-15 1e-15
    GLOB mechanics_linear_pcs_0_ts_*.vtu velocity velocity 1e-15 1e-15
    GLOB mechanics_linear_pcs_0_ts_*.vtu HydraulicFlow HydraulicFlow 1e-15 0
    GLOB mechanics_linear_pcs_0_ts_*.vtu NodalForces NodalForces 1e-15 0
)

AddTest(
    NAME RichardsMechanics_square_1e2_confined_compression
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS confined_compression_fully_saturated.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB confined_compression_fully_saturated_pcs_0_ts_*.vtu displacement displacement 5e-12 0
    GLOB confined_compression_fully_saturated_pcs_0_ts_*.vtu pressure pressure 1e-10 1e-15
    GLOB confined_compression_fully_saturated_pcs_0_ts_*.vtu pressure_interpolated pressure_interpolated 1e-10 1e-15
    GLOB confined_compression_fully_saturated_pcs_0_ts_*.vtu velocity velocity 5e-12 0
    # TODO (naumov) The HydraulicFlow result is exactly 6 orders smaller than
    # the corresponding HM process. Why?
    #GLOB confined_compression_fully_saturated_pcs_0_ts_*.vtu HydraulicFlow HydraulicFlow 1e-15 0
    GLOB confined_compression_fully_saturated_pcs_0_ts_*.vtu NodalForces NodalForces 5e-12 0
)

AddTest(
    NAME RichardsMechanics_square_1e2_flow_fully_saturated
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS flow_fully_saturated.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB flow_fully_saturated_pcs_0_ts_*.vtu displacement displacement 2e-14 0
    GLOB flow_fully_saturated_pcs_0_ts_*.vtu sigma sigma 1e-14 0
    GLOB flow_fully_saturated_pcs_0_ts_*.vtu epsilon epsilon 1e-15 0
    GLOB flow_fully_saturated_pcs_0_ts_*.vtu pressure pressure 1e-15 1e-15
    GLOB flow_fully_saturated_pcs_0_ts_*.vtu velocity velocity 1e-15 1e-15
    GLOB flow_fully_saturated_pcs_0_ts_*.vtu HydraulicFlow HydraulicFlow 1e-15 0
    GLOB flow_fully_saturated_pcs_0_ts_*.vtu NodalForces NodalForces 1e-15 0
)

AddTest(
    NAME RichardsMechanics_square_1e2_flow_fully_saturated_anisotropic
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS flow_fully_saturated_anisotropic.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB flow_fully_saturated_anisotropic_pcs_0_ts_*.vtu displacement displacement 2e-14 0
    GLOB flow_fully_saturated_anisotropic_pcs_0_ts_*.vtu sigma sigma 1e-14 0
    GLOB flow_fully_saturated_anisotropic_pcs_0_ts_*.vtu epsilon epsilon 1e-15 0
    GLOB flow_fully_saturated_anisotropic_pcs_0_ts_*.vtu pressure pressure 1e-15 1e-15
    GLOB flow_fully_saturated_anisotropic_pcs_0_ts_*.vtu velocity velocity 1e-15 1e-15
    GLOB flow_fully_saturated_anisotropic_pcs_0_ts_*.vtu HydraulicFlow HydraulicFlow 1e-15 0
    GLOB flow_fully_saturated_anisotropic_pcs_0_ts_*.vtu NodalForces NodalForces 1e-15 0
)

AddTest(
    NAME RichardsMechanics_square_1e2_flow_fully_saturated_coordinate_system
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS flow_fully_saturated_coordinate_system.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB flow_fully_saturated_coordinate_system_pcs_0_ts_*.vtu displacement displacement 2e-14 0
    GLOB flow_fully_saturated_coordinate_system_pcs_0_ts_*.vtu sigma sigma 1e-14 0
    GLOB flow_fully_saturated_coordinate_system_pcs_0_ts_*.vtu epsilon epsilon 1e-15 0
    GLOB flow_fully_saturated_coordinate_system_pcs_0_ts_*.vtu pressure pressure 2e-15 1e-15
    GLOB flow_fully_saturated_coordinate_system_pcs_0_ts_*.vtu velocity velocity 1e-15 1e-15
    GLOB flow_fully_saturated_coordinate_system_pcs_0_ts_*.vtu HydraulicFlow HydraulicFlow 1e-15 0
    GLOB flow_fully_saturated_coordinate_system_pcs_0_ts_*.vtu NodalForces NodalForces 1e-15 0
)

AddTest(
    NAME RichardsMechanics_RichardsFlow_2d_small
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS RichardsFlow_2d_small.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB RichardsFlow_2d_small_pcs_0_ts_*.vtu displacement displacement 2e-14 0
    GLOB RichardsFlow_2d_small_pcs_0_ts_*.vtu sigma sigma 1e-8 0
    GLOB RichardsFlow_2d_small_pcs_0_ts_*.vtu epsilon epsilon 1e-15 0
    GLOB RichardsFlow_2d_small_pcs_0_ts_*.vtu pressure pressure 1e-7 1e-15
    GLOB RichardsFlow_2d_small_pcs_0_ts_*.vtu pressure_interpolated pressure_interpolated 1e-7 1e-15
    GLOB RichardsFlow_2d_small_pcs_0_ts_*.vtu saturation saturation 1e-11 1e-15
    GLOB RichardsFlow_2d_small_pcs_0_ts_*.vtu saturation_avg saturation_avg 1e-11 1e-15
    GLOB RichardsFlow_2d_small_pcs_0_ts_*.vtu velocity velocity 1e-15 1e-15
    GLOB RichardsFlow_2d_small_pcs_0_ts_*.vtu HydraulicFlow HydraulicFlow 1e-13 0
    GLOB RichardsFlow_2d_small_pcs_0_ts_*.vtu NodalForces NodalForces 1e-9 0
    GLOB Richards_2d_geometry_OBSERVATION_POINT_pcs_0_ts_*.vtu displacement displacement 2e-14 0
    GLOB Richards_2d_geometry_OBSERVATION_POINT_pcs_0_ts_*.vtu pressure pressure 1e-7 1e-15
)
AddTest(
    NAME RichardsMechanics_RichardsFlow_2d_small_masslumping
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS RichardsFlow_2d_small_masslumping.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB RichardsFlow_2d_small_masslumping_pcs_0_ts_*.vtu displacement displacement 2e-14 0
    GLOB RichardsFlow_2d_small_masslumping_pcs_0_ts_*.vtu sigma sigma 1e-8 0
    GLOB RichardsFlow_2d_small_masslumping_pcs_0_ts_*.vtu epsilon epsilon 1e-15 0
    GLOB RichardsFlow_2d_small_masslumping_pcs_0_ts_*.vtu pressure pressure 1e-7 1e-15
    GLOB RichardsFlow_2d_small_masslumping_pcs_0_ts_*.vtu pressure_interpolated pressure_interpolated 1e-7 1e-15
    GLOB RichardsFlow_2d_small_masslumping_pcs_0_ts_*.vtu saturation saturation 1e-11 1e-15
    GLOB RichardsFlow_2d_small_masslumping_pcs_0_ts_*.vtu saturation_avg saturation_avg 1e-11 1e-15
    GLOB RichardsFlow_2d_small_masslumping_pcs_0_ts_*.vtu velocity velocity 1e-15 1e-15
    GLOB RichardsFlow_2d_small_masslumping_pcs_0_ts_*.vtu HydraulicFlow HydraulicFlow 1e-13 0
    GLOB RichardsFlow_2d_small_masslumping_pcs_0_ts_*.vtu NodalForces NodalForces 1e-9 0
)
AddTest(
    NAME RichardsMechanics_RichardsFlow_2d_quasinewton
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS RichardsFlow_2d_quasinewton.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    RUNTIME 49
    DIFF_DATA
    GLOB RichardsFlow_2d_quasinewton_pcs_0_ts_*.vtu displacement displacement 2e-14 0
    GLOB RichardsFlow_2d_quasinewton_pcs_0_ts_*.vtu sigma sigma 1e-8 0
    GLOB RichardsFlow_2d_quasinewton_pcs_0_ts_*.vtu epsilon epsilon 1e-15 0
    GLOB RichardsFlow_2d_quasinewton_pcs_0_ts_*.vtu pressure pressure 3e-9 1e-15
    GLOB RichardsFlow_2d_quasinewton_pcs_0_ts_*.vtu saturation saturation 6e-13 1e-15
    GLOB RichardsFlow_2d_quasinewton_pcs_0_ts_*.vtu saturation_avg saturation_avg 4e-13 1e-15
    GLOB RichardsFlow_2d_quasinewton_pcs_0_ts_*.vtu velocity velocity 1e-15 1e-15
    GLOB RichardsFlow_2d_quasinewton_pcs_0_ts_*.vtu HydraulicFlow HydraulicFlow 1e-15 0
    GLOB RichardsFlow_2d_quasinewton_pcs_0_ts_*.vtu NodalForces NodalForces 1e-15 0
)
AddTest(
    NAME RichardsMechanics_deformation_dependent_porosity
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS deformation_dependent_porosity.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB deformation_dependent_porosity_pcs_0_ts_*.vtu pressure pressure 5e-11 1e-15
    GLOB deformation_dependent_porosity_pcs_0_ts_*.vtu saturation saturation 1e-14 0
    GLOB deformation_dependent_porosity_pcs_0_ts_*.vtu displacement displacement 5e-11 0
    GLOB deformation_dependent_porosity_pcs_0_ts_*.vtu sigma sigma 1e-14 0
    GLOB deformation_dependent_porosity_pcs_0_ts_*.vtu epsilon epsilon 1e-14 0
    GLOB deformation_dependent_porosity_pcs_0_ts_*.vtu velocity velocity 5e-14 0
    GLOB deformation_dependent_porosity_pcs_0_ts_*.vtu porosity porosity 5e-14 1e-15
    GLOB deformation_dependent_porosity_pcs_0_ts_*.vtu porosity_avg porosity_avg 1e-14 1e-15
)
AddTest(
    NAME RichardsMechanics_orthotropic_power_law_permeability_xyz
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS orthotropic_power_law_permeability_xyz.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB orthotropic_power_law_permeability_xyz_pcs_0_ts_*.vtu pressure pressure 5e-11 1e-15
    GLOB orthotropic_power_law_permeability_xyz_pcs_0_ts_*.vtu saturation saturation 1e-14 0
    GLOB orthotropic_power_law_permeability_xyz_pcs_0_ts_*.vtu displacement displacement 5e-11 0
    GLOB orthotropic_power_law_permeability_xyz_pcs_0_ts_*.vtu sigma sigma 2e-14 0
    GLOB orthotropic_power_law_permeability_xyz_pcs_0_ts_*.vtu epsilon epsilon 1e-14 0
    GLOB orthotropic_power_law_permeability_xyz_pcs_0_ts_*.vtu velocity velocity 5e-14 0
    GLOB orthotropic_power_law_permeability_xyz_pcs_0_ts_*.vtu porosity porosity 5e-14 1e-15
    GLOB orthotropic_power_law_permeability_xyz_pcs_0_ts_*.vtu porosity_avg porosity_avg 5e-14 1e-15
)
AddTest(
    NAME RichardsMechanics_orthotropic_swelling_xyz
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS orthotropic_swelling_xyz.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB orthotropic_swelling_xyz_pcs_0_ts_*.vtu pressure pressure 1e-15 0
    GLOB orthotropic_swelling_xyz_pcs_0_ts_*.vtu saturation saturation 1e-14 1e-15
    GLOB orthotropic_swelling_xyz_pcs_0_ts_*.vtu displacement displacement 1e-15 0
    GLOB orthotropic_swelling_xyz_pcs_0_ts_*.vtu sigma sigma 2e-15 0
    GLOB orthotropic_swelling_xyz_pcs_0_ts_*.vtu swelling_stress swelling_stress 3e-15 0
    GLOB orthotropic_swelling_xyz_pcs_0_ts_*.vtu epsilon epsilon 2e-15 0
    GLOB orthotropic_swelling_xyz_pcs_0_ts_*.vtu velocity velocity 1e-15 0
    GLOB orthotropic_swelling_xyz_pcs_0_ts_*.vtu porosity porosity 5e-15 1e-15
    GLOB orthotropic_swelling_xyz_pcs_0_ts_*.vtu porosity_avg porosity_avg 5e-15 1e-15
)
AddTest(
    NAME RichardsMechanics_orthotropic_swelling_xy
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS orthotropic_swelling_xy.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB orthotropic_swelling_xy_pcs_0_ts_*.vtu pressure pressure 1e-15 0
    GLOB orthotropic_swelling_xy_pcs_0_ts_*.vtu saturation saturation 2e-15 1e-15
    GLOB orthotropic_swelling_xy_pcs_0_ts_*.vtu displacement displacement 1e-15 0
    GLOB orthotropic_swelling_xy_pcs_0_ts_*.vtu sigma sigma 1e-15 0
    GLOB orthotropic_swelling_xy_pcs_0_ts_*.vtu swelling_stress swelling_stress 1e-15 0
    GLOB orthotropic_swelling_xy_pcs_0_ts_*.vtu epsilon epsilon 1e-15 0
    GLOB orthotropic_swelling_xy_pcs_0_ts_*.vtu velocity velocity 1e-15 0
    GLOB orthotropic_swelling_xy_pcs_0_ts_*.vtu porosity porosity 1e-15 1e-15
    GLOB orthotropic_swelling_xy_pcs_0_ts_*.vtu porosity_avg porosity_avg 1e-15 1e-15
)
AddTest(
    NAME RichardsMechanics_bishops_effective_stress_power_law
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS bishops_effective_stress_power_law.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB bishops_effective_stress_power_law_pcs_0_ts_*.vtu pressure pressure 1e-15 0
    GLOB bishops_effective_stress_power_law_pcs_0_ts_*.vtu saturation saturation 1e-14 1e-15
    GLOB bishops_effective_stress_power_law_pcs_0_ts_*.vtu displacement displacement 1e-15 0
    GLOB bishops_effective_stress_power_law_pcs_0_ts_*.vtu sigma sigma 5e-15 0
    GLOB bishops_effective_stress_power_law_pcs_0_ts_*.vtu epsilon epsilon 2e-15 0
    GLOB bishops_effective_stress_power_law_pcs_0_ts_*.vtu velocity velocity 1e-15 0
    GLOB bishops_effective_stress_power_law_pcs_0_ts_*.vtu porosity porosity 5e-15 1e-15
    GLOB bishops_effective_stress_power_law_pcs_0_ts_*.vtu porosity_avg porosity_avg 5e-15 1e-15
)
AddTest(
    NAME RichardsMechanics_bishops_effective_stress_saturation_cutoff
    PATH RichardsMechanics
    EXECUTABLE ogs
    EXECUTABLE_ARGS bishops_effective_stress_saturation_cutoff.prj
    WRAPPER time
    TESTER vtkdiff
    REQUIREMENTS NOT OGS_USE_MPI
    DIFF_DATA
    GLOB bishops_effective_stress_saturation_cutoff_pcs_0_ts_*.vtu pressure pressure 1e-15 0
    GLOB bishops_effective_stress_saturation_cutoff_pcs_0_ts_*.vtu saturation saturation 1e-14 1e-15
    GLOB bishops_effective_stress_saturation_cutoff_pcs_0_ts_*.vtu displacement displacement 1e-15 0
    GLOB bishops_effective_stress_saturation_cutoff_pcs_0_ts_*.vtu sigma sigma 1e-15 0
    GLOB bishops_effective_stress_saturation_cutoff_pcs_0_ts_*.vtu epsilon epsilon 1e-15 0
    GLOB bishops_effective_stress_saturation_cutoff_pcs_0_ts_*.vtu velocity velocity 1e-15 0
    GLOB bishops_effective_stress_saturation_cutoff_pcs_0_ts_*.vtu porosity porosity 5e-15 1e-15
    GLOB bishops_effective_stress_saturation_cutoff_pcs_0_ts_*.vtu porosity_avg porosity_avg 5e-15 1e-15
)
