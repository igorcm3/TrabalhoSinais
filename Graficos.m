function varargout = Graficos(varargin)
% GRAFICOS MATLAB code for Graficos.fig
%      GRAFICOS, by itself, creates a new GRAFICOS or raises the existing
%      singleton*.
%
%      H = GRAFICOS returns the handle to a new GRAFICOS or the handle to
%      the existing singleton*.
%
%      GRAFICOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICOS.M with the given input arguments.
%
%      GRAFICOS('Property','Value',...) creates a new GRAFICOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Graficos_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Graficos_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Graficos

% Last Modified by GUIDE v2.5 28-May-2019 20:11:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Graficos_OpeningFcn, ...
                   'gui_OutputFcn',  @Graficos_OutputFcn, ...
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


% --- Executes just before Graficos is made visible.
function Graficos_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Graficos (see VARARGIN)
% Choose default command line output for Graficos
% Update handles structure
handles.Som = varargin{1}.Som;
handles.SomOriginal = varargin{1}.SomOriginal;
handles.Fs = varargin{1}.Fs;
handles.TituloGrafico = varargin{1}.TituloGrafico;
guidata(hObject, handles);
% UIWAIT makes Graficos wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Graficos_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
%handles.lbTituloGrafico.Strings= handles.TituloGrafico;
set (handles.lbTituloGrafico, 'String' , handles.TituloGrafico);
plot(handles.axGrafico,handles.Som);
set(handles.axGrafico,'XMinorTick','on');
plot(handles.axGrafico2,handles.SomOriginal);
set(handles.axGrafico,'XMinorTick','on');
