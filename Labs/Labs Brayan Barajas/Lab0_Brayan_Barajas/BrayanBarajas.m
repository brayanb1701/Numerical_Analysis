function BrayanBarajas(ejex,opc)
if (opc==0)
    plot(ejex,cos(ejex)),title('Coseno')
else 
    if(opc==1)
        plot(ejex,sin(ejex)),title('Seno')
    end
end

end

