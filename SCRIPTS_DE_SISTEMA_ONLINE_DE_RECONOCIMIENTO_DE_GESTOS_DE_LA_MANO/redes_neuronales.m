function [redes_neuronales] = redes_neuronales(inputs,targets)
    trainFcn = 'trainscg'; % algoritmo para entrenamiento
    hiddenLayerSize=15; % número de neuronas para entrenamiento
    net = patternnet(hiddenLayerSize); % inicialiación de la red neuronal
    % Setup Division of Data for Training, Validation, Testing
    net.divideParam.trainRatio = 70/100;% cantidad de datos que servirán para el entrenamiento
    net.divideParam.valRatio = 15/100;% cantidad de datos que servirán para la validación
    net.divideParam.testRatio = 15/100;% cantidad de datos que servirán para el testeo
    [redes_neuronales,tr] = train(net,inputs,targets); % entrenamiento de la red neuronal
    nntraintool close % cierre de la ventana de entrenamiento
end

