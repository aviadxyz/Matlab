function [vdpResistivity] = vdpSolve(R_Vertical,R_Horizontal,Sample_Thickness)
    
    %Calculate Resistivity using Van Der Pauw method
    %
    %Enter the following parameters:
    %1. R_Vertical & R_Horizontal in Ohms
    %2. Sample_Thickness in nm [10^-9 meter]
    %
    %Initial guess is a sheet resistance (Rs) of 100 Ohms. 
    %Enter the function to change the initial guess, if needed.
    %
    %Result is Resistivity in [micro Ohm * cm]
    
    Rs = fsolve(@(Rs)(exp(-pi*R_Vertical/Rs)+exp(-pi*R_Horizontal/Rs)-1),200);
    
    %Calculate Resistivity
    %Rs in Ohms, Sample_Thickness in nm, vdpResistivity is microOhm*cm
    vdpResistivity = Rs*Sample_Thickness*(10^6)*(10^-7);
     
end