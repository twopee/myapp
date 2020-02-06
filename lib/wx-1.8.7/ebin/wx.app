%% This is an -*- erlang -*- file.
%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2010-2016. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%

{application, wx,
 [{description, "Yet another graphics system"},
  {vsn, "1.8.7"},
  {modules,
   [
    %% Generated modules
  wxTreebook, wxPalette, wxGridCellEditor, wxCalendarDateAttr, wxRadioBox, wxEvent, wxKeyEvent, wxDirPickerCtrl, wxStaticText, wxPrintData, wxPrintPreview, wxStdDialogButtonSizer, wxMDIChildFrame, wxControlWithItems, wxSpinCtrl, wxListItem, wxStyledTextCtrl, wxIdleEvent, wxTextEntryDialog, wxMouseCaptureLostEvent, wxGridCellBoolRenderer, wxGraphicsRenderer, wxNavigationKeyEvent, wxFrame, wxPasswordEntryDialog, wxDC, wxSizerItem, wxQueryNewPaletteEvent, wxBitmap, wxPreviewFrame, wxGraphicsMatrix, wxLocale, wxListCtrl, wxGridCellRenderer, wxSysColourChangedEvent, wxGCDC, wxPrintout, wxGraphicsObject, wxCalendarCtrl, wxTaskBarIconEvent, wxToggleButton, wxEraseEvent, wxInitDialogEvent, wxStatusBar, wxColourDialog, wxWindowDC, wxGridCellFloatRenderer, wxButton, wxChoicebook, wxDisplay, wxClipboardTextEvent, wxMouseCaptureChangedEvent, wxScrolledWindow, wxPrintDialogData, wxFlexGridSizer, wxFileDialog, wxColourData, wxImage, wxBitmapButton, wxColourPickerEvent, wxIcon, wxHelpEvent, wxUpdateUIEvent, wxStaticBoxSizer, wxAcceleratorEntry, wxGLCanvas, wxAuiNotebookEvent, wxPickerBase, wxPen, wxGBSizerItem, wxMenuBar, wxSizer, wxSlider, wxToolTip, wxNotifyEvent, wxGraphicsContext, wxImageList, wxGridCellChoiceEditor, wxXmlResource, wxGridCellAttr, wxFocusEvent, wxSashWindow, wxGraphicsPath, wxPanel, wxCommandEvent, wxSizeEvent, wxListView, wxShowEvent, wxOverlay, wxMultiChoiceDialog, wxGridCellBoolEditor, wxAuiNotebook, wxLayoutAlgorithm, wxContextMenuEvent, wxNotebook, wxGridEvent, wxLogNull, wxMoveEvent, wxPrintDialog, wxBufferedPaintDC, wxHtmlEasyPrinting, wxArtProvider, wxPaletteChangedEvent, wxGridCellNumberRenderer, wxGraphicsPen, wxToolBar, wxDisplayChangedEvent, wxMessageDialog, wxChildFocusEvent, wxFileDirPickerEvent, wxNotebookEvent, wxListBox, wxGridCellNumberEditor, wxProgressDialog, wxSplitterWindow, wxPaintEvent, wxAuiPaneInfo, wxMenu, wxMouseEvent, wxClipboard, wxBoxSizer, wxAuiManager, wxMirrorDC, wxListItemAttr, wxIconBundle, wxHtmlWindow, wxCheckBox, wxMenuEvent, wxScrollBar, wxSplitterEvent, wxFontData, wxMask, wxSizerFlags, wxSashEvent, wxAuiSimpleTabArt, wxGrid, wxPostScriptDC, wxFindReplaceData, wxFilePickerCtrl, wxColourPickerCtrl, wxPopupWindow, wxScreenDC, wxPaintDC, wxTopLevelWindow, wxBrush, wxDialog, wxCursor, wxListEvent, wxMiniFrame, wxStaticLine, wxTextDataObject, wxGridCellStringRenderer, wxSystemOptions, wxPageSetupDialogData, wxFindReplaceDialog, wxBitmapDataObject, wxGridCellTextEditor, wxGauge, wxCalendarEvent, wxTextCtrl, wxDateEvent, wxMaximizeEvent, wxDropFilesEvent, wxClientDC, wxRadioButton, wxBufferedDC, wxStaticBox, wxGridCellFloatEditor, wxSashLayoutWindow, wxScrollEvent, wxGridSizer, wxListbook, wxGridBagSizer, wxStaticBitmap, wxWindow, wxGraphicsFont, wxActivateEvent, wxControl, wxChoice, wxMenuItem, wxFontDialog, wxSetCursorEvent, wxWindowDestroyEvent, wxAuiDockArt, wxJoystickEvent, wxScrollWinEvent, wxComboBox, wxTextAttr, wxPreviewCanvas, wxDCOverlay, wx_misc, wxCheckListBox, wxDirDialog, wxPageSetupDialog, wxAuiManagerEvent, wxSpinButton, wxRegion, wxPrinter, wxFontPickerEvent, wxSingleChoiceDialog, wxSpinEvent, wxAuiTabArt, wxTreeEvent, wxHtmlLinkEvent, wxMDIClientWindow, wxSystemSettings, wxDatePickerCtrl, wxFont, wxTreeCtrl, wxGenericDirCtrl, wxEvtHandler, wxPreviewControlBar, wxMDIParentFrame, wxWindowCreateEvent, wxGraphicsBrush, wxAcceleratorTable, wxIconizeEvent, wxStyledTextEvent, wxCaret, wxCloseEvent, wxFontPickerCtrl, wxFileDataObject, wxPopupTransientWindow, wxTaskBarIcon, wxToolbook, wxMemoryDC, wxSplashScreen, wxDataObject, glu, gl,
    %% Handcrafted modules
    wx,
    wx_object,
    wxe_master,
    wxe_server,
    wxe_util
   ]},
  {registered, []},
  {applications, [stdlib, kernel]},
  {env, []},
  {runtime_dependencies, ["stdlib-2.0","kernel-3.0","erts-6.0"]}
 ]}.
