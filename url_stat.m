%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%
%         URL Statistics          %
%                                 %
%                                 %
%  Author: Giovanni MASTRONARDI   %
%  Email: gm03@hotmail.it         %
%                                 %
%  Matera, August 2017            %
%                                 %
%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%
function varargout = url_stat(varargin)
% URL_STAT MATLAB code for url_stat.fig
%      URL_STAT, by itself, creates a new URL_STAT or raises the existing
%      singleton*.
%
%      H = URL_STAT returns the handle to a new URL_STAT or the handle to
%      the existing singleton*.
%
%      URL_STAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in URL_STAT.M with the given input arguments.
%
%      URL_STAT('Property','Value',...) creates a new URL_STAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before url_stat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to url_stat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help url_stat

% Last Modified by GUIDE v2.5 25-Aug-2017 11:54:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @url_stat_OpeningFcn, ...
                   'gui_OutputFcn',  @url_stat_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before url_stat is made visible.
function url_stat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to url_stat (see VARARGIN)

% Choose default command line output for url_stat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes url_stat wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = url_stat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
guidata(hObject, handles);

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double

handles.URL = get(hObject,'String');

guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%HTML entities
entities = {[''''],['&apos;'];['"'],['&quot;'];['&'],['&amp;'];['<'],['&lt;'];['>'],['&gt;'];[' '],['&nbsp;'];['¡'],['&iexcl;'];['¢'],['&cent;'];['£'],['&pound;'];['¤'],['&curren;'];
['¥'],['&yen;'];['¦'],['&brvbar;'];['§'],['&sect;'];['¨'],['&uml;'];['©'],['&copy;'];['ª'],['&ordf;'];['«'],['&laquo;'];['¬'],['&not;'];
['-'],['&shy;'];['®'],['&reg;'];['¯'],['&macr;'];['°'],['&deg;'];['±'],['&plusmn;'];['²'],['&sup2;'];['³'],['&sup3;'];['´'],['&acute;'];	
['µ'],['&micro;'];	['¶'],['&para;'];['·'],['&middot;'];['¸'],['&cedil;'];['¹'],['&sup1;'];	['º'],['&ordm;'];['»'],['&raquo;'];	['¼'],['&frac14;'];
['½'],['&frac12;'];['¾'],['&frac34;'];['¿'],['&iquest;'];['×'],['&times;'];['÷'],['&divide;'];['À'],['&Agrave;'];['Á'],['&Aacute;'];['Â'],['&Acirc;'];	
['Ã'],['&Atilde;'];['Ä'],['&Auml;'];['Å'],['&Aring;'];	['Æ'],['&AElig;'];['Ç'],['&Ccedil;'];['È'],['&Egrave;'];['É'],['&Eacute;'];['Ê'],['&Ecirc;'];	
['Ë'],['&Euml;'];['Ì'],['&Igrave;'];['Í'],['&Iacute;'];['Î'],['&Icirc;'];['Ï'],['&Iuml;'];	['Ð'],['&ETH;'];['Ñ'],['&Ntilde;'];['Ò'],['&Ograve;'];
['Ó'],['&Oacute;'];['Ô'],['&Ocirc;'];['Õ'],['&Otilde;'];['Ö'],['&Ouml;'];['Ø'],['&Oslash;'];['Ù'],['&Ugrave;'];['Ú'],['&Uacute;'];['Û'],['&Ucirc;'];	
['Ü'],['&Uuml;'];['Ý'],['&Yacute;'];['Þ'],['&THORN;'];['ß'],['&szlig;'];['à'],['&agrave;'];['á'],['&aacute;'];['â'],['&acirc;'];['ã'],['&atilde;'];
['ä'],['&auml;'];['å'],['&aring;'];	['æ'],['&aelig;'];['ç'],['&ccedil;'];['è'],['&egrave;'];['é'],['&eacute;'];['ê'],['&ecirc;'];['ë'],['&euml;'];	
['ì'],['&igrave;'];['í'],['&iacute;'];['î'],['&icirc;'];['ï'],['&iuml;'];['ð'],['&eth;'];['ñ'],['&ntilde;'];['ò'],['&ograve;'];['ó'],['&oacute;'];
['ô'],['&ocirc;'];	['õ'],['&otilde;'];['ö'],['&ouml;'];['ø'],['&oslash;'];['ù'],['&ugrave;'];['ú'],['&uacute;'];['û'],['&ucirc;'];	['ü'],['&uuml;'];	
['ý'],['&yacute;'];['þ'],['&thorn;'];['ÿ'],['&yuml;'];[' '],['&#32;'];['!'],['&#33;'];['"'],['&#34;'];['#'],['&#35;'];['$'],['&#36;'];
['%'],['&#37;'];['&'],['&#38;'];[''''],['&#39;'];['('],['&#40;'];[')'],['&#41;'];['*'],['&#42;'];['+'],['&#43;'];[','],['&#44;'];
['-'],['&#45;'];['.'],['&#46;'];['/'],['&#47;'];['0'],['&#48;'];['1'],['&#49;'];['2'],['&#50;'];['3'],['&#51;'];['4'],['&#52;'];
['5'],['&#53;'];['6'],['&#54;'];['7'],['&#55;'];['8'],['&#56;'];['9'],['&#57;'];[':'],['&#58;'];[';'],['&#59;'];['<'],['&#60;'];
['='],['&#61;'];['>'],['&#62;'];['?'],['&#63;'];['@'],['&#64;'];['A'],['&#65;'];['B'],['&#66;'];['C'],['&#67;'];['D'],['&#68;'];
['E'],['&#69;'];['F'],['&#70;'];['G'],['&#71;'];['H'],['&#72;'];['I'],['&#73;'];['J'],['&#74;'];['K'],['&#75;'];['L'],['&#76;'];
['M'],['&#77;'];['N'],['&#78;'];['O'],['&#79;'];['P'],['&#80;'];['Q'],['&#81;'];['R'],['&#82;'];['S'],['&#83;'];['T'],['&#84;'];	
['U'],['&#85;'];['V'],['&#86;'];['W'],['&#87;'];['X'],['&#88;'];['Y'],['&#89;'];['Z'],['&#90;'];['['],['&#91;'];['\'],['&#92;'];
[']'],['&#93;'];['^'],['&#94;'];['_'],['&#95;'];['`'],['&#96;'];['a'],['&#97;'];['b'],['&#98;'];['c'],['&#99;'];['d'],['&#100;'];
['e'],['&#101;'];['f'],['&#102;'];['g'],['&#103;'];['h'],['&#104;'];['i'],['&#105;'];['j'],['&#106;'];['k'],['&#107;'];['l'],['&#108;'];
['m'],['&#109;'];['n'],['&#110;'];['o'],['&#111;'];['p'],['&#112;'];['q'],['&#113;'];['r'],['&#114;'];['s'],['&#115;'];['t'],['&#116;'];
['u'],['&#117;'];['v'],['&#118;'];['w'],['&#119;'];['x'],['&#120;'];['y'],['&#121;'];['z'],['&#122;'];['{'],['&#123;'];['|'],['&#124;'];
['}'],['&#125;'];['~'],['&#126;'];['¡'],['&#161;'];['¢'],['&#162;'];['£'],['&#163;'];['¤'],['&#164;'];['¥'],['&#165;'];%['	'],['&#160;'];
['¦'],['&#166;'];['§'],['&#167;'];['¨'],['&#168;'];['©'],['&#169;'];['ª'],['&#170;'];['«'],['&#171;'];['¬'],['&#172;'];['®'],['&#174;'];
['¯'],['&#175;'];['°'],['&#176;'];['±'],['&#177;'];['²'],['&#178;'];['³'],['&#179;'];['´'],['&#180;'];['µ'],['&#181;'];['¶'],['&#182;'];
['·'],['&#183;'];['¸'],['&#184;'];['¹'],['&#185;'];['º'],['&#186;'];['»'],['&#187;'];['¼'],['&#188;'];['½'],['&#189;'];['¾'],['&#190;'];
['¿'],['&#191;'];['À'],['&#192;'];['Á'],['&#193;'];['Â'],['&#194;'];['Ã'],['&#195;'];['Ä'],['&#196;'];['Å'],['&#197;'];['Æ'],['&#198;'];
['Ç'],['&#199;'];['È'],['&#200;'];['É'],['&#201;'];['Ê'],['&#202;'];['Ë'],['&#203;'];['Ì'],['&#204;'];['Í'],['&#205;'];['Î'],['&#206;'];
['Ï'],['&#207;'];['Ð'],['&#208;'];['Ñ'],['&#209;'];['Ò'],['&#210;'];['Ó'],['&#211;'];['Ô'],['&#212;'];['Õ'],['&#213;'];['Ö'],['&#214;'];
['×'],['&#215;'];['Ø'],['&#216;'];['Ù'],['&#217;'];['Ú'],['&#218;'];['Û'],['&#219;'];['Ü'],['&#220;'];['Ý'],['&#221;'];['Þ'],['&#222;'];
['ß'],['&#223;'];['à'],['&#224;'];['á'],['&#225;'];['â'],['&#226;'];['ã'],['&#227;'];['ä'],['&#228;'];['å'],['&#229;'];['æ'],['&#230;'];
['ç'],['&#231;'];['è'],['&#232;'];['é'],['&#233;'];['ê'],['&#234;'];['ë'],['&#235;'];['ì'],['&#236;'];['í'],['&#237;'];['î'],['&#238;'];
['ï'],['&#239;'];['ð'],['&#240;'];['ñ'],['&#241;'];['ò'],['&#242;'];['ó'],['&#243;'];['ô'],['&#244;'];['õ'],['&#245;'];['ö'],['&#246;'];
['÷'],['&#247;'];['ø'],['&#248;'];['ù'],['&#249;'];['ú'],['&#250;'];['û'],['&#251;'];['ü'],['&#252;'];['ý'],['&#253;'];['þ'],['&#254;'];
['ÿ'],['&#255;'];['Œ'],['&#338;'];['œ'],['&#339;'];['Š'],['&#352;'];['š'],['&#353;'];['Ÿ'],['&#376;'];['ƒ'],['&#402;'];['–'],['&#8211;'];
['—'],['&#8212;'];['‘'],['&#8216;'];['’'],['&#8217;'];['‚'],['&#8218;'];['“'],['&#8220;'];['”'],['&#8221;'];['„'],['&#8222;'];
['†'],['&#8224;'];['‡'],['&#8225;'];['•'],['&#8226;'];['…'],['&#8230;'];['‰'],['&#8240;'];['€'],['&#8364;'];['™'],['&#8482;']};

set(handles.pushbutton2,'visible','on');
set(handles.text3,'visible','off');
set(handles.listbox1,'visible','off');
pause(.1);

if isfield(handles,'URL') && ~isempty(handles.URL) && (startsWith(handles.URL,'http://') || startsWith(handles.URL,'https://'))
    
    %Remove HTML tags
    options = weboptions('ContentType','text');
    options.Timeout = 20;
	txt = webread(handles.URL,options);
    txt = regexprep(txt,'<script.*?/script>','');
    txt = regexprep(txt,'<style.*?/style>','');
    txt = regexprep(txt,'<.*?>','');
    txt = regexprep(txt,'\r|\n|\r\n|\n\r','');
    
    %Decode HTML entities
    for i=1:length(entities)
        txt = strrep(txt,char(entities(i,2)),char(entities(i,1)));
    end
    
    %Search for most common letter
    alpha = 'abcdefghijklmnopqrstuvwxyz';
    for i=1:length(alpha)
        c(i) = sum(count(txt,alpha(i)));
    end
    mcl = alpha(find(c == max(c)));
    
    %Search for longest word
    txt = strtrim(txt);
    txt = strrep(txt,'	',' ');
    txt = strsplit(txt,' ');
    txt_unique = unique(txt);
    for i=1:length(txt_unique)
        longit(i) = length(char(txt_unique(1,i)));       
    end
    lw = txt_unique(find(longit == max(longit)));
    
    %Each word's frequency
    for i = 1:length(txt_unique)
        frequency(i) = 0;
        for j= 1:length(txt)
           if strcmp(char(txt_unique(1,i)),char(txt(1,j)))
               frequency(i) = frequency(i) + 1;
           end
        end
    end
    words(1) = cellstr(strcat('Each word''s frequency:'));
    for i = 2:length(txt_unique)-1
       words(i) = cellstr(strcat(char(txt_unique(1,i)), {'      (Frequency: '}, char(num2str(frequency(1,i))), ')'));
    end
    
    %Output
    set(handles.listbox1, 'String',vertcat(cellstr(strcat(['Longest word: ' char(lw),'     (',num2str(max(longit)),' characters)'])), ...
                cellstr(strcat({' '})),...
                cellstr(strcat('Most common letter: ', {' '}, char(mcl))),...
                cellstr(strcat({' '})),...
                words'));
    
    set(handles.text3,'String','Statistics');
    set(handles.text3,'visible','on');
    set(handles.pushbutton2,'visible','off');
    set(handles.listbox1,'visible','on');
    pause(.1);   
    
else
    set(handles.pushbutton2,'visible','off');
    set(handles.text3,'visible','on');
    set(handles.listbox1,'visible','off');
    set(handles.listbox1,'String','');
    set(handles.text3,'String','URL should start with http:// or https://');
    pause(.1);
end
    
guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guidata(hObject, handles);

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
guidata(hObject, handles);
