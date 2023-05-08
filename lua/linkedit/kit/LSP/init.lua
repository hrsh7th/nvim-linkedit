local LSP = {}

---@enum linkedit.kit.LSP.SemanticTokenTypes
LSP.SemanticTokenTypes = {
  namespace = 'namespace',
  type = 'type',
  class = 'class',
  enum = 'enum',
  interface = 'interface',
  struct = 'struct',
  typeParameter = 'typeParameter',
  parameter = 'parameter',
  variable = 'variable',
  property = 'property',
  enumMember = 'enumMember',
  event = 'event',
  ['function'] = 'function',
  method = 'method',
  macro = 'macro',
  keyword = 'keyword',
  modifier = 'modifier',
  comment = 'comment',
  string = 'string',
  number = 'number',
  regexp = 'regexp',
  operator = 'operator',
  decorator = 'decorator',
}

---@enum linkedit.kit.LSP.SemanticTokenModifiers
LSP.SemanticTokenModifiers = {
  declaration = 'declaration',
  definition = 'definition',
  readonly = 'readonly',
  static = 'static',
  deprecated = 'deprecated',
  abstract = 'abstract',
  async = 'async',
  modification = 'modification',
  documentation = 'documentation',
  defaultLibrary = 'defaultLibrary',
}

---@enum linkedit.kit.LSP.DocumentDiagnosticReportKind
LSP.DocumentDiagnosticReportKind = {
  Full = 'full',
  Unchanged = 'unchanged',
}

---@enum linkedit.kit.LSP.ErrorCodes
LSP.ErrorCodes = {
  ParseError = -32700,
  InvalidRequest = -32600,
  MethodNotFound = -32601,
  InvalidParams = -32602,
  InternalError = -32603,
  ServerNotInitialized = -32002,
  UnknownErrorCode = -32001,
}

---@enum linkedit.kit.LSP.LSPErrorCodes
LSP.LSPErrorCodes = {
  RequestFailed = -32803,
  ServerCancelled = -32802,
  ContentModified = -32801,
  RequestCancelled = -32800,
}

---@enum linkedit.kit.LSP.FoldingRangeKind
LSP.FoldingRangeKind = {
  Comment = 'comment',
  Imports = 'imports',
  Region = 'region',
}

---@enum linkedit.kit.LSP.SymbolKind
LSP.SymbolKind = {
  File = 1,
  Module = 2,
  Namespace = 3,
  Package = 4,
  Class = 5,
  Method = 6,
  Property = 7,
  Field = 8,
  Constructor = 9,
  Enum = 10,
  Interface = 11,
  Function = 12,
  Variable = 13,
  Constant = 14,
  String = 15,
  Number = 16,
  Boolean = 17,
  Array = 18,
  Object = 19,
  Key = 20,
  Null = 21,
  EnumMember = 22,
  Struct = 23,
  Event = 24,
  Operator = 25,
  TypeParameter = 26,
}

---@enum linkedit.kit.LSP.SymbolTag
LSP.SymbolTag = {
  Deprecated = 1,
}

---@enum linkedit.kit.LSP.UniquenessLevel
LSP.UniquenessLevel = {
  document = 'document',
  project = 'project',
  group = 'group',
  scheme = 'scheme',
  global = 'global',
}

---@enum linkedit.kit.LSP.MonikerKind
LSP.MonikerKind = {
  import = 'import',
  export = 'export',
  ['local'] = 'local',
}

---@enum linkedit.kit.LSP.InlayHintKind
LSP.InlayHintKind = {
  Type = 1,
  Parameter = 2,
}

---@enum linkedit.kit.LSP.MessageType
LSP.MessageType = {
  Error = 1,
  Warning = 2,
  Info = 3,
  Log = 4,
}

---@enum linkedit.kit.LSP.TextDocumentSyncKind
LSP.TextDocumentSyncKind = {
  None = 0,
  Full = 1,
  Incremental = 2,
}

---@enum linkedit.kit.LSP.TextDocumentSaveReason
LSP.TextDocumentSaveReason = {
  Manual = 1,
  AfterDelay = 2,
  FocusOut = 3,
}

---@enum linkedit.kit.LSP.CompletionItemKind
LSP.CompletionItemKind = {
  Text = 1,
  Method = 2,
  Function = 3,
  Constructor = 4,
  Field = 5,
  Variable = 6,
  Class = 7,
  Interface = 8,
  Module = 9,
  Property = 10,
  Unit = 11,
  Value = 12,
  Enum = 13,
  Keyword = 14,
  Snippet = 15,
  Color = 16,
  File = 17,
  Reference = 18,
  Folder = 19,
  EnumMember = 20,
  Constant = 21,
  Struct = 22,
  Event = 23,
  Operator = 24,
  TypeParameter = 25,
}

---@enum linkedit.kit.LSP.CompletionItemTag
LSP.CompletionItemTag = {
  Deprecated = 1,
}

---@enum linkedit.kit.LSP.InsertTextFormat
LSP.InsertTextFormat = {
  PlainText = 1,
  Snippet = 2,
}

---@enum linkedit.kit.LSP.InsertTextMode
LSP.InsertTextMode = {
  asIs = 1,
  adjustIndentation = 2,
}

---@enum linkedit.kit.LSP.DocumentHighlightKind
LSP.DocumentHighlightKind = {
  Text = 1,
  Read = 2,
  Write = 3,
}

---@enum linkedit.kit.LSP.CodeActionKind
LSP.CodeActionKind = {
  Empty = '',
  QuickFix = 'quickfix',
  Refactor = 'refactor',
  RefactorExtract = 'refactor.extract',
  RefactorInline = 'refactor.inline',
  RefactorRewrite = 'refactor.rewrite',
  Source = 'source',
  SourceOrganizeImports = 'source.organizeImports',
  SourceFixAll = 'source.fixAll',
}

---@enum linkedit.kit.LSP.TraceValues
LSP.TraceValues = {
  Off = 'off',
  Messages = 'messages',
  Verbose = 'verbose',
}

---@enum linkedit.kit.LSP.MarkupKind
LSP.MarkupKind = {
  PlainText = 'plaintext',
  Markdown = 'markdown',
}

---@enum linkedit.kit.LSP.PositionEncodingKind
LSP.PositionEncodingKind = {
  UTF8 = 'utf-8',
  UTF16 = 'utf-16',
  UTF32 = 'utf-32',
}

---@enum linkedit.kit.LSP.FileChangeType
LSP.FileChangeType = {
  Created = 1,
  Changed = 2,
  Deleted = 3,
}

---@enum linkedit.kit.LSP.WatchKind
LSP.WatchKind = {
  Create = 1,
  Change = 2,
  Delete = 4,
}

---@enum linkedit.kit.LSP.DiagnosticSeverity
LSP.DiagnosticSeverity = {
  Error = 1,
  Warning = 2,
  Information = 3,
  Hint = 4,
}

---@enum linkedit.kit.LSP.DiagnosticTag
LSP.DiagnosticTag = {
  Unnecessary = 1,
  Deprecated = 2,
}

---@enum linkedit.kit.LSP.CompletionTriggerKind
LSP.CompletionTriggerKind = {
  Invoked = 1,
  TriggerCharacter = 2,
  TriggerForIncompleteCompletions = 3,
}

---@enum linkedit.kit.LSP.SignatureHelpTriggerKind
LSP.SignatureHelpTriggerKind = {
  Invoked = 1,
  TriggerCharacter = 2,
  ContentChange = 3,
}

---@enum linkedit.kit.LSP.CodeActionTriggerKind
LSP.CodeActionTriggerKind = {
  Invoked = 1,
  Automatic = 2,
}

---@enum linkedit.kit.LSP.FileOperationPatternKind
LSP.FileOperationPatternKind = {
  file = 'file',
  folder = 'folder',
}

---@enum linkedit.kit.LSP.NotebookCellKind
LSP.NotebookCellKind = {
  Markup = 1,
  Code = 2,
}

---@enum linkedit.kit.LSP.ResourceOperationKind
LSP.ResourceOperationKind = {
  Create = 'create',
  Rename = 'rename',
  Delete = 'delete',
}

---@enum linkedit.kit.LSP.FailureHandlingKind
LSP.FailureHandlingKind = {
  Abort = 'abort',
  Transactional = 'transactional',
  TextOnlyTransactional = 'textOnlyTransactional',
  Undo = 'undo',
}

---@enum linkedit.kit.LSP.PrepareSupportDefaultBehavior
LSP.PrepareSupportDefaultBehavior = {
  Identifier = 1,
}

---@enum linkedit.kit.LSP.TokenFormat
LSP.TokenFormat = {
  Relative = 'relative',
}

---@class linkedit.kit.LSP.ImplementationParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams

---@class linkedit.kit.LSP.Location
---@field public uri string
---@field public range linkedit.kit.LSP.Range

---@class linkedit.kit.LSP.ImplementationRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.ImplementationOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.TypeDefinitionParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams

---@class linkedit.kit.LSP.TypeDefinitionRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.TypeDefinitionOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.WorkspaceFolder
---@field public uri string The associated URI for this workspace folder.
---@field public name string The name of the workspace folder. Used to refer to this<br>workspace folder in the user interface.

---@class linkedit.kit.LSP.DidChangeWorkspaceFoldersParams
---@field public event linkedit.kit.LSP.WorkspaceFoldersChangeEvent The actual workspace folder change event.

---@class linkedit.kit.LSP.ConfigurationParams
---@field public items linkedit.kit.LSP.ConfigurationItem[]

---@class linkedit.kit.LSP.PartialResultParams
---@field public partialResultToken? linkedit.kit.LSP.ProgressToken An optional token that a server can use to report partial results (e.g. streaming) to<br>the client.

---@class linkedit.kit.LSP.DocumentColorParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.

---@class linkedit.kit.LSP.ColorInformation
---@field public range linkedit.kit.LSP.Range The range in the document where this color appears.
---@field public color linkedit.kit.LSP.Color The actual color value for this color range.

---@class linkedit.kit.LSP.DocumentColorRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.DocumentColorOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.ColorPresentationParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.
---@field public color linkedit.kit.LSP.Color The color to request presentations for.
---@field public range linkedit.kit.LSP.Range The range where the color would be inserted. Serves as a context.

---@class linkedit.kit.LSP.ColorPresentation
---@field public label string The label of this color presentation. It will be shown on the color<br>picker header. By default this is also the text that is inserted when selecting<br>this color presentation.
---@field public textEdit? linkedit.kit.LSP.TextEdit An [edit](#TextEdit) which is applied to a document when selecting<br>this presentation for the color.  When `falsy` the [label](#ColorPresentation.label)<br>is used.
---@field public additionalTextEdits? linkedit.kit.LSP.TextEdit[] An optional array of additional [text edits](#TextEdit) that are applied when<br>selecting this color presentation. Edits must not overlap with the main [edit](#ColorPresentation.textEdit) nor with themselves.

---@class linkedit.kit.LSP.WorkDoneProgressOptions
---@field public workDoneProgress? boolean

---@class linkedit.kit.LSP.TextDocumentRegistrationOptions
---@field public documentSelector (linkedit.kit.LSP.DocumentSelector | nil) A document selector to identify the scope of the registration. If set to null<br>the document selector provided on the client side will be used.

---@class linkedit.kit.LSP.FoldingRangeParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.

---@class linkedit.kit.LSP.FoldingRange
---@field public startLine integer The zero-based start line of the range to fold. The folded area starts after the line's last character.<br>To be valid, the end must be zero or larger and smaller than the number of lines in the document.
---@field public startCharacter? integer The zero-based character offset from where the folded range starts. If not defined, defaults to the length of the start line.
---@field public endLine integer The zero-based end line of the range to fold. The folded area ends with the line's last character.<br>To be valid, the end must be zero or larger and smaller than the number of lines in the document.
---@field public endCharacter? integer The zero-based character offset before the folded range ends. If not defined, defaults to the length of the end line.
---@field public kind? linkedit.kit.LSP.FoldingRangeKind Describes the kind of the folding range such as `comment' or 'region'. The kind<br>is used to categorize folding ranges and used by commands like 'Fold all comments'.<br>See [FoldingRangeKind](#FoldingRangeKind) for an enumeration of standardized kinds.
---@field public collapsedText? string The text that the client should show when the specified range is<br>collapsed. If not defined or not supported by the client, a default<br>will be chosen by the client.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.FoldingRangeRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.FoldingRangeOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.DeclarationParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams

---@class linkedit.kit.LSP.DeclarationRegistrationOptions : linkedit.kit.LSP.DeclarationOptions, linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.SelectionRangeParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.
---@field public positions linkedit.kit.LSP.Position[] The positions inside the text document.

---@class linkedit.kit.LSP.SelectionRange
---@field public range linkedit.kit.LSP.Range The [range](#Range) of this selection range.
---@field public parent? linkedit.kit.LSP.SelectionRange The parent selection range containing this range. Therefore `parent.range` must contain `this.range`.

---@class linkedit.kit.LSP.SelectionRangeRegistrationOptions : linkedit.kit.LSP.SelectionRangeOptions, linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.WorkDoneProgressCreateParams
---@field public token linkedit.kit.LSP.ProgressToken The token to be used to report progress.

---@class linkedit.kit.LSP.WorkDoneProgressCancelParams
---@field public token linkedit.kit.LSP.ProgressToken The token to be used to report progress.

---@class linkedit.kit.LSP.CallHierarchyPrepareParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams

---@class linkedit.kit.LSP.CallHierarchyItem
---@field public name string The name of this item.
---@field public kind linkedit.kit.LSP.SymbolKind The kind of this item.
---@field public tags? linkedit.kit.LSP.SymbolTag[] Tags for this item.
---@field public detail? string More detail for this item, e.g. the signature of a function.
---@field public uri string The resource identifier of this item.
---@field public range linkedit.kit.LSP.Range The range enclosing this symbol not including leading/trailing whitespace but everything else, e.g. comments and code.
---@field public selectionRange linkedit.kit.LSP.Range The range that should be selected and revealed when this symbol is being picked, e.g. the name of a function.<br>Must be contained by the [`range`](#CallHierarchyItem.range).
---@field public data? linkedit.kit.LSP.LSPAny A data entry field that is preserved between a call hierarchy prepare and<br>incoming calls or outgoing calls requests.

---@class linkedit.kit.LSP.CallHierarchyRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.CallHierarchyOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.CallHierarchyIncomingCallsParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public item linkedit.kit.LSP.CallHierarchyItem

---@class linkedit.kit.LSP.CallHierarchyIncomingCall
---@field public from linkedit.kit.LSP.CallHierarchyItem The item that makes the call.
---@field public fromRanges linkedit.kit.LSP.Range[] The ranges at which the calls appear. This is relative to the caller<br>denoted by [`this.from`](#CallHierarchyIncomingCall.from).

---@class linkedit.kit.LSP.CallHierarchyOutgoingCallsParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public item linkedit.kit.LSP.CallHierarchyItem

---@class linkedit.kit.LSP.CallHierarchyOutgoingCall
---@field public to linkedit.kit.LSP.CallHierarchyItem The item that is called.
---@field public fromRanges linkedit.kit.LSP.Range[] The range at which this item is called. This is the range relative to the caller, e.g the item<br>passed to [`provideCallHierarchyOutgoingCalls`](#CallHierarchyItemProvider.provideCallHierarchyOutgoingCalls)<br>and not [`this.to`](#CallHierarchyOutgoingCall.to).

---@class linkedit.kit.LSP.SemanticTokensParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.

---@class linkedit.kit.LSP.SemanticTokens
---@field public resultId? string An optional result id. If provided and clients support delta updating<br>the client will include the result id in the next semantic token request.<br>A server can then instead of computing all semantic tokens again simply<br>send a delta.
---@field public data integer[] The actual tokens.

---@class linkedit.kit.LSP.SemanticTokensPartialResult
---@field public data integer[]

---@class linkedit.kit.LSP.SemanticTokensRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.SemanticTokensOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.SemanticTokensDeltaParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.
---@field public previousResultId string The result id of a previous response. The result Id can either point to a full response<br>or a delta response depending on what was received last.

---@class linkedit.kit.LSP.SemanticTokensDelta
---@field public resultId? string
---@field public edits linkedit.kit.LSP.SemanticTokensEdit[] The semantic token edits to transform a previous result into a new result.

---@class linkedit.kit.LSP.SemanticTokensDeltaPartialResult
---@field public edits linkedit.kit.LSP.SemanticTokensEdit[]

---@class linkedit.kit.LSP.SemanticTokensRangeParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.
---@field public range linkedit.kit.LSP.Range The range the semantic tokens are requested for.

---@class linkedit.kit.LSP.ShowDocumentParams
---@field public uri string The document uri to show.
---@field public external? boolean Indicates to show the resource in an external program.<br>To show for example `https://code.visualstudio.com/`<br>in the default WEB browser set `external` to `true`.
---@field public takeFocus? boolean An optional property to indicate whether the editor<br>showing the document should take focus or not.<br>Clients might ignore this property if an external<br>program is started.
---@field public selection? linkedit.kit.LSP.Range An optional selection range if the document is a text<br>document. Clients might ignore the property if an<br>external program is started or the file is not a text<br>file.

---@class linkedit.kit.LSP.ShowDocumentResult
---@field public success boolean A boolean indicating if the show was successful.

---@class linkedit.kit.LSP.LinkedEditingRangeParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams

---@class linkedit.kit.LSP.LinkedEditingRanges
---@field public ranges linkedit.kit.LSP.Range[] A list of ranges that can be edited together. The ranges must have<br>identical length and contain identical text content. The ranges cannot overlap.
---@field public wordPattern? string An optional word pattern (regular expression) that describes valid contents for<br>the given ranges. If no pattern is provided, the client configuration's word<br>pattern will be used.

---@class linkedit.kit.LSP.LinkedEditingRangeRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.LinkedEditingRangeOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.CreateFilesParams
---@field public files linkedit.kit.LSP.FileCreate[] An array of all files/folders created in this operation.

---@class linkedit.kit.LSP.WorkspaceEdit
---@field public changes? table<string, linkedit.kit.LSP.TextEdit[]> Holds changes to existing resources.
---@field public documentChanges? (linkedit.kit.LSP.TextDocumentEdit | linkedit.kit.LSP.CreateFile | linkedit.kit.LSP.RenameFile | linkedit.kit.LSP.DeleteFile)[] Depending on the client capability `workspace.workspaceEdit.resourceOperations` document changes<br>are either an array of `TextDocumentEdit`s to express changes to n different text documents<br>where each text document edit addresses a specific version of a text document. Or it can contain<br>above `TextDocumentEdit`s mixed with create, rename and delete file / folder operations.<br><br>Whether a client supports versioned document edits is expressed via<br>`workspace.workspaceEdit.documentChanges` client capability.<br><br>If a client neither supports `documentChanges` nor `workspace.workspaceEdit.resourceOperations` then<br>only plain `TextEdit`s using the `changes` property are supported.
---@field public changeAnnotations? table<linkedit.kit.LSP.ChangeAnnotationIdentifier, linkedit.kit.LSP.ChangeAnnotation> A map of change annotations that can be referenced in `AnnotatedTextEdit`s or create, rename and<br>delete file / folder operations.<br><br>Whether clients honor this property depends on the client capability `workspace.changeAnnotationSupport`.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.FileOperationRegistrationOptions
---@field public filters linkedit.kit.LSP.FileOperationFilter[] The actual filters.

---@class linkedit.kit.LSP.RenameFilesParams
---@field public files linkedit.kit.LSP.FileRename[] An array of all files/folders renamed in this operation. When a folder is renamed, only<br>the folder will be included, and not its children.

---@class linkedit.kit.LSP.DeleteFilesParams
---@field public files linkedit.kit.LSP.FileDelete[] An array of all files/folders deleted in this operation.

---@class linkedit.kit.LSP.MonikerParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams

---@class linkedit.kit.LSP.Moniker
---@field public scheme string The scheme of the moniker. For example tsc or .Net
---@field public identifier string The identifier of the moniker. The value is opaque in LSIF however<br>schema owners are allowed to define the structure if they want.
---@field public unique linkedit.kit.LSP.UniquenessLevel The scope in which the moniker is unique
---@field public kind? linkedit.kit.LSP.MonikerKind The moniker kind if known.

---@class linkedit.kit.LSP.MonikerRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.MonikerOptions

---@class linkedit.kit.LSP.TypeHierarchyPrepareParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams

---@class linkedit.kit.LSP.TypeHierarchyItem
---@field public name string The name of this item.
---@field public kind linkedit.kit.LSP.SymbolKind The kind of this item.
---@field public tags? linkedit.kit.LSP.SymbolTag[] Tags for this item.
---@field public detail? string More detail for this item, e.g. the signature of a function.
---@field public uri string The resource identifier of this item.
---@field public range linkedit.kit.LSP.Range The range enclosing this symbol not including leading/trailing whitespace<br>but everything else, e.g. comments and code.
---@field public selectionRange linkedit.kit.LSP.Range The range that should be selected and revealed when this symbol is being<br>picked, e.g. the name of a function. Must be contained by the<br>[`range`](#TypeHierarchyItem.range).
---@field public data? linkedit.kit.LSP.LSPAny A data entry field that is preserved between a type hierarchy prepare and<br>supertypes or subtypes requests. It could also be used to identify the<br>type hierarchy in the server, helping improve the performance on<br>resolving supertypes and subtypes.

---@class linkedit.kit.LSP.TypeHierarchyRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.TypeHierarchyOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.TypeHierarchySupertypesParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public item linkedit.kit.LSP.TypeHierarchyItem

---@class linkedit.kit.LSP.TypeHierarchySubtypesParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public item linkedit.kit.LSP.TypeHierarchyItem

---@class linkedit.kit.LSP.InlineValueParams : linkedit.kit.LSP.WorkDoneProgressParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.
---@field public range linkedit.kit.LSP.Range The document range for which inline values should be computed.
---@field public context linkedit.kit.LSP.InlineValueContext Additional information about the context in which inline values were<br>requested.

---@class linkedit.kit.LSP.InlineValueRegistrationOptions : linkedit.kit.LSP.InlineValueOptions, linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.InlayHintParams : linkedit.kit.LSP.WorkDoneProgressParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.
---@field public range linkedit.kit.LSP.Range The document range for which inlay hints should be computed.

---@class linkedit.kit.LSP.InlayHint
---@field public position linkedit.kit.LSP.Position The position of this hint.
---@field public label (string | linkedit.kit.LSP.InlayHintLabelPart[]) The label of this hint. A human readable string or an array of<br>InlayHintLabelPart label parts.<br><br>*Note* that neither the string nor the label part can be empty.
---@field public kind? linkedit.kit.LSP.InlayHintKind The kind of this hint. Can be omitted in which case the client<br>should fall back to a reasonable default.
---@field public textEdits? linkedit.kit.LSP.TextEdit[] Optional text edits that are performed when accepting this inlay hint.<br><br>*Note* that edits are expected to change the document so that the inlay<br>hint (or its nearest variant) is now part of the document and the inlay<br>hint itself is now obsolete.
---@field public tooltip? (string | linkedit.kit.LSP.MarkupContent) The tooltip text when you hover over this item.
---@field public paddingLeft? boolean Render padding before the hint.<br><br>Note: Padding should use the editor's background color, not the<br>background color of the hint itself. That means padding can be used<br>to visually align/separate an inlay hint.
---@field public paddingRight? boolean Render padding after the hint.<br><br>Note: Padding should use the editor's background color, not the<br>background color of the hint itself. That means padding can be used<br>to visually align/separate an inlay hint.
---@field public data? linkedit.kit.LSP.LSPAny A data entry field that is preserved on an inlay hint between<br>a `textDocument/inlayHint` and a `inlayHint/resolve` request.

---@class linkedit.kit.LSP.InlayHintRegistrationOptions : linkedit.kit.LSP.InlayHintOptions, linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.DocumentDiagnosticParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.
---@field public identifier? string The additional identifier  provided during registration.
---@field public previousResultId? string The result id of a previous response if provided.

---@class linkedit.kit.LSP.DocumentDiagnosticReportPartialResult
---@field public relatedDocuments table<string, (linkedit.kit.LSP.FullDocumentDiagnosticReport | linkedit.kit.LSP.UnchangedDocumentDiagnosticReport)>

---@class linkedit.kit.LSP.DiagnosticServerCancellationData
---@field public retriggerRequest boolean

---@class linkedit.kit.LSP.DiagnosticRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.DiagnosticOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.WorkspaceDiagnosticParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public identifier? string The additional identifier provided during registration.
---@field public previousResultIds linkedit.kit.LSP.PreviousResultId[] The currently known diagnostic reports with their<br>previous result ids.

---@class linkedit.kit.LSP.WorkspaceDiagnosticReport
---@field public items linkedit.kit.LSP.WorkspaceDocumentDiagnosticReport[]

---@class linkedit.kit.LSP.WorkspaceDiagnosticReportPartialResult
---@field public items linkedit.kit.LSP.WorkspaceDocumentDiagnosticReport[]

---@class linkedit.kit.LSP.DidOpenNotebookDocumentParams
---@field public notebookDocument linkedit.kit.LSP.NotebookDocument The notebook document that got opened.
---@field public cellTextDocuments linkedit.kit.LSP.TextDocumentItem[] The text documents that represent the content<br>of a notebook cell.

---@class linkedit.kit.LSP.DidChangeNotebookDocumentParams
---@field public notebookDocument linkedit.kit.LSP.VersionedNotebookDocumentIdentifier The notebook document that did change. The version number points<br>to the version after all provided changes have been applied. If<br>only the text document content of a cell changes the notebook version<br>doesn't necessarily have to change.
---@field public change linkedit.kit.LSP.NotebookDocumentChangeEvent The actual changes to the notebook document.<br><br>The changes describe single state changes to the notebook document.<br>So if there are two changes c1 (at array index 0) and c2 (at array<br>index 1) for a notebook in state S then c1 moves the notebook from<br>S to S' and c2 from S' to S''. So c1 is computed on the state S and<br>c2 is computed on the state S'.<br><br>To mirror the content of a notebook using change events use the following approach:<br>- start with the same initial content<br>- apply the 'notebookDocument/didChange' notifications in the order you receive them.<br>- apply the `NotebookChangeEvent`s in a single notification in the order<br>  you receive them.

---@class linkedit.kit.LSP.DidSaveNotebookDocumentParams
---@field public notebookDocument linkedit.kit.LSP.NotebookDocumentIdentifier The notebook document that got saved.

---@class linkedit.kit.LSP.DidCloseNotebookDocumentParams
---@field public notebookDocument linkedit.kit.LSP.NotebookDocumentIdentifier The notebook document that got closed.
---@field public cellTextDocuments linkedit.kit.LSP.TextDocumentIdentifier[] The text documents that represent the content<br>of a notebook cell that got closed.

---@class linkedit.kit.LSP.RegistrationParams
---@field public registrations linkedit.kit.LSP.Registration[]

---@class linkedit.kit.LSP.UnregistrationParams
---@field public unregisterations linkedit.kit.LSP.Unregistration[]

---@class linkedit.kit.LSP.InitializeParams : linkedit.kit.LSP._InitializeParams, linkedit.kit.LSP.WorkspaceFoldersInitializeParams

---@class linkedit.kit.LSP.InitializeResult
---@field public capabilities linkedit.kit.LSP.ServerCapabilities The capabilities the language server provides.
---@field public serverInfo? linkedit.kit.LSP.InitializeResult.serverInfo Information about the server.<br><br>@since 3.15.0

---@class linkedit.kit.LSP.InitializeResult.serverInfo
---@field public name string The name of the server as defined by the server.
---@field public version? string The server's version as defined by the server.

---@class linkedit.kit.LSP.InitializeError
---@field public retry boolean Indicates whether the client execute the following retry logic:<br>(1) show the message provided by the ResponseError to the user<br>(2) user selects retry or cancel<br>(3) if user selected retry the initialize method is sent again.

---@class linkedit.kit.LSP.InitializedParams

---@class linkedit.kit.LSP.DidChangeConfigurationParams
---@field public settings linkedit.kit.LSP.LSPAny The actual changed settings

---@class linkedit.kit.LSP.DidChangeConfigurationRegistrationOptions
---@field public section? (string | string[])

---@class linkedit.kit.LSP.ShowMessageParams
---@field public type linkedit.kit.LSP.MessageType The message type. See {@link MessageType}
---@field public message string The actual message.

---@class linkedit.kit.LSP.ShowMessageRequestParams
---@field public type linkedit.kit.LSP.MessageType The message type. See {@link MessageType}
---@field public message string The actual message.
---@field public actions? linkedit.kit.LSP.MessageActionItem[] The message action items to present.

---@class linkedit.kit.LSP.MessageActionItem
---@field public title string A short title like 'Retry', 'Open Log' etc.

---@class linkedit.kit.LSP.LogMessageParams
---@field public type linkedit.kit.LSP.MessageType The message type. See {@link MessageType}
---@field public message string The actual message.

---@class linkedit.kit.LSP.DidOpenTextDocumentParams
---@field public textDocument linkedit.kit.LSP.TextDocumentItem The document that was opened.

---@class linkedit.kit.LSP.DidChangeTextDocumentParams
---@field public textDocument linkedit.kit.LSP.VersionedTextDocumentIdentifier The document that did change. The version number points<br>to the version after all provided content changes have<br>been applied.
---@field public contentChanges linkedit.kit.LSP.TextDocumentContentChangeEvent[] The actual content changes. The content changes describe single state changes<br>to the document. So if there are two content changes c1 (at array index 0) and<br>c2 (at array index 1) for a document in state S then c1 moves the document from<br>S to S' and c2 from S' to S''. So c1 is computed on the state S and c2 is computed<br>on the state S'.<br><br>To mirror the content of a document using change events use the following approach:<br>- start with the same initial content<br>- apply the 'textDocument/didChange' notifications in the order you receive them.<br>- apply the `TextDocumentContentChangeEvent`s in a single notification in the order<br>  you receive them.

---@class linkedit.kit.LSP.TextDocumentChangeRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions
---@field public syncKind linkedit.kit.LSP.TextDocumentSyncKind How documents are synced to the server.

---@class linkedit.kit.LSP.DidCloseTextDocumentParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The document that was closed.

---@class linkedit.kit.LSP.DidSaveTextDocumentParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The document that was saved.
---@field public text? string Optional the content when saved. Depends on the includeText value<br>when the save notification was requested.

---@class linkedit.kit.LSP.TextDocumentSaveRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.SaveOptions

---@class linkedit.kit.LSP.WillSaveTextDocumentParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The document that will be saved.
---@field public reason linkedit.kit.LSP.TextDocumentSaveReason The 'TextDocumentSaveReason'.

---@class linkedit.kit.LSP.TextEdit
---@field public range linkedit.kit.LSP.Range The range of the text document to be manipulated. To insert<br>text into a document create a range where start === end.
---@field public newText string The string to be inserted. For delete operations use an<br>empty string.

---@class linkedit.kit.LSP.DidChangeWatchedFilesParams
---@field public changes linkedit.kit.LSP.FileEvent[] The actual file events.

---@class linkedit.kit.LSP.DidChangeWatchedFilesRegistrationOptions
---@field public watchers linkedit.kit.LSP.FileSystemWatcher[] The watchers to register.

---@class linkedit.kit.LSP.PublishDiagnosticsParams
---@field public uri string The URI for which diagnostic information is reported.
---@field public version? integer Optional the version number of the document the diagnostics are published for.<br><br>@since 3.15.0
---@field public diagnostics linkedit.kit.LSP.Diagnostic[] An array of diagnostic information items.

---@class linkedit.kit.LSP.CompletionParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public context? linkedit.kit.LSP.CompletionContext The completion context. This is only available it the client specifies<br>to send this using the client capability `textDocument.completion.contextSupport === true`

---@class linkedit.kit.LSP.CompletionItem
---@field public label string The label of this completion item.<br><br>The label property is also by default the text that<br>is inserted when selecting this completion.<br><br>If label details are provided the label itself should<br>be an unqualified name of the completion item.
---@field public labelDetails? linkedit.kit.LSP.CompletionItemLabelDetails Additional details for the label<br><br>@since 3.17.0
---@field public kind? linkedit.kit.LSP.CompletionItemKind The kind of this completion item. Based of the kind<br>an icon is chosen by the editor.
---@field public tags? linkedit.kit.LSP.CompletionItemTag[] Tags for this completion item.<br><br>@since 3.15.0
---@field public detail? string A human-readable string with additional information<br>about this item, like type or symbol information.
---@field public documentation? (string | linkedit.kit.LSP.MarkupContent) A human-readable string that represents a doc-comment.
---@field public deprecated? boolean Indicates if this item is deprecated.<br>@deprecated Use `tags` instead.
---@field public preselect? boolean Select this item when showing.<br><br>*Note* that only one completion item can be selected and that the<br>tool / client decides which item that is. The rule is that the *first*<br>item of those that match best is selected.
---@field public sortText? string A string that should be used when comparing this item<br>with other items. When `falsy` the [label](#CompletionItem.label)<br>is used.
---@field public filterText? string A string that should be used when filtering a set of<br>completion items. When `falsy` the [label](#CompletionItem.label)<br>is used.
---@field public insertText? string A string that should be inserted into a document when selecting<br>this completion. When `falsy` the [label](#CompletionItem.label)<br>is used.<br><br>The `insertText` is subject to interpretation by the client side.<br>Some tools might not take the string literally. For example<br>VS Code when code complete is requested in this example<br>`con<cursor position>` and a completion item with an `insertText` of<br>`console` is provided it will only insert `sole`. Therefore it is<br>recommended to use `textEdit` instead since it avoids additional client<br>side interpretation.
---@field public insertTextFormat? linkedit.kit.LSP.InsertTextFormat The format of the insert text. The format applies to both the<br>`insertText` property and the `newText` property of a provided<br>`textEdit`. If omitted defaults to `InsertTextFormat.PlainText`.<br><br>Please note that the insertTextFormat doesn't apply to<br>`additionalTextEdits`.
---@field public insertTextMode? linkedit.kit.LSP.InsertTextMode How whitespace and indentation is handled during completion<br>item insertion. If not provided the clients default value depends on<br>the `textDocument.completion.insertTextMode` client capability.<br><br>@since 3.16.0
---@field public textEdit? (linkedit.kit.LSP.TextEdit | linkedit.kit.LSP.InsertReplaceEdit) An [edit](#TextEdit) which is applied to a document when selecting<br>this completion. When an edit is provided the value of<br>[insertText](#CompletionItem.insertText) is ignored.<br><br>Most editors support two different operations when accepting a completion<br>item. One is to insert a completion text and the other is to replace an<br>existing text with a completion text. Since this can usually not be<br>predetermined by a server it can report both ranges. Clients need to<br>signal support for `InsertReplaceEdits` via the<br>`textDocument.completion.insertReplaceSupport` client capability<br>property.<br><br>*Note 1:* The text edit's range as well as both ranges from an insert<br>replace edit must be a [single line] and they must contain the position<br>at which completion has been requested.<br>*Note 2:* If an `InsertReplaceEdit` is returned the edit's insert range<br>must be a prefix of the edit's replace range, that means it must be<br>contained and starting at the same position.<br><br>@since 3.16.0 additional type `InsertReplaceEdit`
---@field public textEditText? string The edit text used if the completion item is part of a CompletionList and<br>CompletionList defines an item default for the text edit range.<br><br>Clients will only honor this property if they opt into completion list<br>item defaults using the capability `completionList.itemDefaults`.<br><br>If not provided and a list's default range is provided the label<br>property is used as a text.<br><br>@since 3.17.0
---@field public additionalTextEdits? linkedit.kit.LSP.TextEdit[] An optional array of additional [text edits](#TextEdit) that are applied when<br>selecting this completion. Edits must not overlap (including the same insert position)<br>with the main [edit](#CompletionItem.textEdit) nor with themselves.<br><br>Additional text edits should be used to change text unrelated to the current cursor position<br>(for example adding an import statement at the top of the file if the completion item will<br>insert an unqualified type).
---@field public commitCharacters? string[] An optional set of characters that when pressed while this completion is active will accept it first and<br>then type that character. *Note* that all commit characters should have `length=1` and that superfluous<br>characters will be ignored.
---@field public command? linkedit.kit.LSP.Command An optional [command](#Command) that is executed *after* inserting this completion. *Note* that<br>additional modifications to the current document should be described with the<br>[additionalTextEdits](#CompletionItem.additionalTextEdits)-property.
---@field public data? linkedit.kit.LSP.LSPAny A data entry field that is preserved on a completion item between a<br>[CompletionRequest](#CompletionRequest) and a [CompletionResolveRequest](#CompletionResolveRequest).

---@class linkedit.kit.LSP.CompletionList
---@field public isIncomplete boolean This list it not complete. Further typing results in recomputing this list.<br><br>Recomputed lists have all their items replaced (not appended) in the<br>incomplete completion sessions.
---@field public itemDefaults? linkedit.kit.LSP.CompletionList.itemDefaults In many cases the items of an actual completion result share the same<br>value for properties like `commitCharacters` or the range of a text<br>edit. A completion list can therefore define item defaults which will<br>be used if a completion item itself doesn't specify the value.<br><br>If a completion list specifies a default value and a completion item<br>also specifies a corresponding value the one from the item is used.<br><br>Servers are only allowed to return default values if the client<br>signals support for this via the `completionList.itemDefaults`<br>capability.<br><br>@since 3.17.0
---@field public items linkedit.kit.LSP.CompletionItem[] The completion items.

---@class linkedit.kit.LSP.CompletionList.itemDefaults
---@field public commitCharacters? string[] A default commit character set.<br><br>@since 3.17.0
---@field public editRange? (linkedit.kit.LSP.Range | { insert: linkedit.kit.LSP.Range, replace: linkedit.kit.LSP.Range }) A default edit range.<br><br>@since 3.17.0
---@field public insertTextFormat? linkedit.kit.LSP.InsertTextFormat A default insert text format.<br><br>@since 3.17.0
---@field public insertTextMode? linkedit.kit.LSP.InsertTextMode A default insert text mode.<br><br>@since 3.17.0
---@field public data? linkedit.kit.LSP.LSPAny A default data value.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.CompletionRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.CompletionOptions

---@class linkedit.kit.LSP.HoverParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams

---@class linkedit.kit.LSP.Hover
---@field public contents (linkedit.kit.LSP.MarkupContent | linkedit.kit.LSP.MarkedString | linkedit.kit.LSP.MarkedString[]) The hover's content
---@field public range? linkedit.kit.LSP.Range An optional range inside the text document that is used to<br>visualize the hover, e.g. by changing the background color.

---@class linkedit.kit.LSP.HoverRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.HoverOptions

---@class linkedit.kit.LSP.SignatureHelpParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams
---@field public context? linkedit.kit.LSP.SignatureHelpContext The signature help context. This is only available if the client specifies<br>to send this using the client capability `textDocument.signatureHelp.contextSupport === true`<br><br>@since 3.15.0

---@class linkedit.kit.LSP.SignatureHelp
---@field public signatures linkedit.kit.LSP.SignatureInformation[] One or more signatures.
---@field public activeSignature? integer The active signature. If omitted or the value lies outside the<br>range of `signatures` the value defaults to zero or is ignored if<br>the `SignatureHelp` has no signatures.<br><br>Whenever possible implementors should make an active decision about<br>the active signature and shouldn't rely on a default value.<br><br>In future version of the protocol this property might become<br>mandatory to better express this.
---@field public activeParameter? integer The active parameter of the active signature. If omitted or the value<br>lies outside the range of `signatures[activeSignature].parameters`<br>defaults to 0 if the active signature has parameters. If<br>the active signature has no parameters it is ignored.<br>In future version of the protocol this property might become<br>mandatory to better express the active parameter if the<br>active signature does have any.

---@class linkedit.kit.LSP.SignatureHelpRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.SignatureHelpOptions

---@class linkedit.kit.LSP.DefinitionParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams

---@class linkedit.kit.LSP.DefinitionRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.DefinitionOptions

---@class linkedit.kit.LSP.ReferenceParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public context linkedit.kit.LSP.ReferenceContext

---@class linkedit.kit.LSP.ReferenceRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.ReferenceOptions

---@class linkedit.kit.LSP.DocumentHighlightParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams

---@class linkedit.kit.LSP.DocumentHighlight
---@field public range linkedit.kit.LSP.Range The range this highlight applies to.
---@field public kind? linkedit.kit.LSP.DocumentHighlightKind The highlight kind, default is [text](#DocumentHighlightKind.Text).

---@class linkedit.kit.LSP.DocumentHighlightRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.DocumentHighlightOptions

---@class linkedit.kit.LSP.DocumentSymbolParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.

---@class linkedit.kit.LSP.SymbolInformation : linkedit.kit.LSP.BaseSymbolInformation
---@field public deprecated? boolean Indicates if this symbol is deprecated.<br><br>@deprecated Use tags instead
---@field public location linkedit.kit.LSP.Location The location of this symbol. The location's range is used by a tool<br>to reveal the location in the editor. If the symbol is selected in the<br>tool the range's start information is used to position the cursor. So<br>the range usually spans more than the actual symbol's name and does<br>normally include things like visibility modifiers.<br><br>The range doesn't have to denote a node range in the sense of an abstract<br>syntax tree. It can therefore not be used to re-construct a hierarchy of<br>the symbols.

---@class linkedit.kit.LSP.DocumentSymbol
---@field public name string The name of this symbol. Will be displayed in the user interface and therefore must not be<br>an empty string or a string only consisting of white spaces.
---@field public detail? string More detail for this symbol, e.g the signature of a function.
---@field public kind linkedit.kit.LSP.SymbolKind The kind of this symbol.
---@field public tags? linkedit.kit.LSP.SymbolTag[] Tags for this document symbol.<br><br>@since 3.16.0
---@field public deprecated? boolean Indicates if this symbol is deprecated.<br><br>@deprecated Use tags instead
---@field public range linkedit.kit.LSP.Range The range enclosing this symbol not including leading/trailing whitespace but everything else<br>like comments. This information is typically used to determine if the clients cursor is<br>inside the symbol to reveal in the symbol in the UI.
---@field public selectionRange linkedit.kit.LSP.Range The range that should be selected and revealed when this symbol is being picked, e.g the name of a function.<br>Must be contained by the `range`.
---@field public children? linkedit.kit.LSP.DocumentSymbol[] Children of this symbol, e.g. properties of a class.

---@class linkedit.kit.LSP.DocumentSymbolRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.DocumentSymbolOptions

---@class linkedit.kit.LSP.CodeActionParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The document in which the command was invoked.
---@field public range linkedit.kit.LSP.Range The range for which the command was invoked.
---@field public context linkedit.kit.LSP.CodeActionContext Context carrying additional information.

---@class linkedit.kit.LSP.Command
---@field public title string Title of the command, like `save`.
---@field public command string The identifier of the actual command handler.
---@field public arguments? linkedit.kit.LSP.LSPAny[] Arguments that the command handler should be<br>invoked with.

---@class linkedit.kit.LSP.CodeAction
---@field public title string A short, human-readable, title for this code action.
---@field public kind? linkedit.kit.LSP.CodeActionKind The kind of the code action.<br><br>Used to filter code actions.
---@field public diagnostics? linkedit.kit.LSP.Diagnostic[] The diagnostics that this code action resolves.
---@field public isPreferred? boolean Marks this as a preferred action. Preferred actions are used by the `auto fix` command and can be targeted<br>by keybindings.<br><br>A quick fix should be marked preferred if it properly addresses the underlying error.<br>A refactoring should be marked preferred if it is the most reasonable choice of actions to take.<br><br>@since 3.15.0
---@field public disabled? linkedit.kit.LSP.CodeAction.disabled Marks that the code action cannot currently be applied.<br><br>Clients should follow the following guidelines regarding disabled code actions:<br><br>  - Disabled code actions are not shown in automatic [lightbulbs](https://code.visualstudio.com/docs/editor/editingevolved#_code-action)<br>    code action menus.<br><br>  - Disabled actions are shown as faded out in the code action menu when the user requests a more specific type<br>    of code action, such as refactorings.<br><br>  - If the user has a [keybinding](https://code.visualstudio.com/docs/editor/refactoring#_keybindings-for-code-actions)<br>    that auto applies a code action and only disabled code actions are returned, the client should show the user an<br>    error message with `reason` in the editor.<br><br>@since 3.16.0
---@field public edit? linkedit.kit.LSP.WorkspaceEdit The workspace edit this code action performs.
---@field public command? linkedit.kit.LSP.Command A command this code action executes. If a code action<br>provides an edit and a command, first the edit is<br>executed and then the command.
---@field public data? linkedit.kit.LSP.LSPAny A data entry field that is preserved on a code action between<br>a `textDocument/codeAction` and a `codeAction/resolve` request.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.CodeAction.disabled
---@field public reason string Human readable description of why the code action is currently disabled.<br><br>This is displayed in the code actions UI.

---@class linkedit.kit.LSP.CodeActionRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.CodeActionOptions

---@class linkedit.kit.LSP.WorkspaceSymbolParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public query string A query string to filter symbols by. Clients may send an empty<br>string here to request all symbols.

---@class linkedit.kit.LSP.WorkspaceSymbol : linkedit.kit.LSP.BaseSymbolInformation
---@field public location (linkedit.kit.LSP.Location | { uri: string }) The location of the symbol. Whether a server is allowed to<br>return a location without a range depends on the client<br>capability `workspace.symbol.resolveSupport`.<br><br>See SymbolInformation#location for more details.
---@field public data? linkedit.kit.LSP.LSPAny A data entry field that is preserved on a workspace symbol between a<br>workspace symbol request and a workspace symbol resolve request.

---@class linkedit.kit.LSP.WorkspaceSymbolRegistrationOptions : linkedit.kit.LSP.WorkspaceSymbolOptions

---@class linkedit.kit.LSP.CodeLensParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The document to request code lens for.

---@class linkedit.kit.LSP.CodeLens
---@field public range linkedit.kit.LSP.Range The range in which this code lens is valid. Should only span a single line.
---@field public command? linkedit.kit.LSP.Command The command this code lens represents.
---@field public data? linkedit.kit.LSP.LSPAny A data entry field that is preserved on a code lens item between<br>a [CodeLensRequest](#CodeLensRequest) and a [CodeLensResolveRequest]<br>(#CodeLensResolveRequest)

---@class linkedit.kit.LSP.CodeLensRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.CodeLensOptions

---@class linkedit.kit.LSP.DocumentLinkParams : linkedit.kit.LSP.WorkDoneProgressParams, linkedit.kit.LSP.PartialResultParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The document to provide document links for.

---@class linkedit.kit.LSP.DocumentLink
---@field public range linkedit.kit.LSP.Range The range this link applies to.
---@field public target? string The uri this link points to. If missing a resolve request is sent later.
---@field public tooltip? string The tooltip text when you hover over this link.<br><br>If a tooltip is provided, is will be displayed in a string that includes instructions on how to<br>trigger the link, such as `{0} (ctrl + click)`. The specific instructions vary depending on OS,<br>user settings, and localization.<br><br>@since 3.15.0
---@field public data? linkedit.kit.LSP.LSPAny A data entry field that is preserved on a document link between a<br>DocumentLinkRequest and a DocumentLinkResolveRequest.

---@class linkedit.kit.LSP.DocumentLinkRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.DocumentLinkOptions

---@class linkedit.kit.LSP.DocumentFormattingParams : linkedit.kit.LSP.WorkDoneProgressParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The document to format.
---@field public options linkedit.kit.LSP.FormattingOptions The format options.

---@class linkedit.kit.LSP.DocumentFormattingRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.DocumentFormattingOptions

---@class linkedit.kit.LSP.DocumentRangeFormattingParams : linkedit.kit.LSP.WorkDoneProgressParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The document to format.
---@field public range linkedit.kit.LSP.Range The range to format
---@field public options linkedit.kit.LSP.FormattingOptions The format options

---@class linkedit.kit.LSP.DocumentRangeFormattingRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.DocumentRangeFormattingOptions

---@class linkedit.kit.LSP.DocumentOnTypeFormattingParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The document to format.
---@field public position linkedit.kit.LSP.Position The position around which the on type formatting should happen.<br>This is not necessarily the exact position where the character denoted<br>by the property `ch` got typed.
---@field public ch string The character that has been typed that triggered the formatting<br>on type request. That is not necessarily the last character that<br>got inserted into the document since the client could auto insert<br>characters as well (e.g. like automatic brace completion).
---@field public options linkedit.kit.LSP.FormattingOptions The formatting options.

---@class linkedit.kit.LSP.DocumentOnTypeFormattingRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.DocumentOnTypeFormattingOptions

---@class linkedit.kit.LSP.RenameParams : linkedit.kit.LSP.WorkDoneProgressParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The document to rename.
---@field public position linkedit.kit.LSP.Position The position at which this request was sent.
---@field public newName string The new name of the symbol. If the given name is not valid the<br>request must return a [ResponseError](#ResponseError) with an<br>appropriate message set.

---@class linkedit.kit.LSP.RenameRegistrationOptions : linkedit.kit.LSP.TextDocumentRegistrationOptions, linkedit.kit.LSP.RenameOptions

---@class linkedit.kit.LSP.PrepareRenameParams : linkedit.kit.LSP.TextDocumentPositionParams, linkedit.kit.LSP.WorkDoneProgressParams

---@class linkedit.kit.LSP.ExecuteCommandParams : linkedit.kit.LSP.WorkDoneProgressParams
---@field public command string The identifier of the actual command handler.
---@field public arguments? linkedit.kit.LSP.LSPAny[] Arguments that the command should be invoked with.

---@class linkedit.kit.LSP.ExecuteCommandRegistrationOptions : linkedit.kit.LSP.ExecuteCommandOptions

---@class linkedit.kit.LSP.ApplyWorkspaceEditParams
---@field public label? string An optional label of the workspace edit. This label is<br>presented in the user interface for example on an undo<br>stack to undo the workspace edit.
---@field public edit linkedit.kit.LSP.WorkspaceEdit The edits to apply.

---@class linkedit.kit.LSP.ApplyWorkspaceEditResult
---@field public applied boolean Indicates whether the edit was applied or not.
---@field public failureReason? string An optional textual description for why the edit was not applied.<br>This may be used by the server for diagnostic logging or to provide<br>a suitable error for a request that triggered the edit.
---@field public failedChange? integer Depending on the client's failure handling strategy `failedChange` might<br>contain the index of the change that failed. This property is only available<br>if the client signals a `failureHandlingStrategy` in its client capabilities.

---@class linkedit.kit.LSP.WorkDoneProgressBegin
---@field public kind "begin"
---@field public title string Mandatory title of the progress operation. Used to briefly inform about<br>the kind of operation being performed.<br><br>Examples: "Indexing" or "Linking dependencies".
---@field public cancellable? boolean Controls if a cancel button should show to allow the user to cancel the<br>long running operation. Clients that don't support cancellation are allowed<br>to ignore the setting.
---@field public message? string Optional, more detailed associated progress message. Contains<br>complementary information to the `title`.<br><br>Examples: "3/25 files", "project/src/module2", "node_modules/some_dep".<br>If unset, the previous progress message (if any) is still valid.
---@field public percentage? integer Optional progress percentage to display (value 100 is considered 100%).<br>If not provided infinite progress is assumed and clients are allowed<br>to ignore the `percentage` value in subsequent in report notifications.<br><br>The value should be steadily rising. Clients are free to ignore values<br>that are not following this rule. The value range is [0, 100].

---@class linkedit.kit.LSP.WorkDoneProgressReport
---@field public kind "report"
---@field public cancellable? boolean Controls enablement state of a cancel button.<br><br>Clients that don't support cancellation or don't support controlling the button's<br>enablement state are allowed to ignore the property.
---@field public message? string Optional, more detailed associated progress message. Contains<br>complementary information to the `title`.<br><br>Examples: "3/25 files", "project/src/module2", "node_modules/some_dep".<br>If unset, the previous progress message (if any) is still valid.
---@field public percentage? integer Optional progress percentage to display (value 100 is considered 100%).<br>If not provided infinite progress is assumed and clients are allowed<br>to ignore the `percentage` value in subsequent in report notifications.<br><br>The value should be steadily rising. Clients are free to ignore values<br>that are not following this rule. The value range is [0, 100]

---@class linkedit.kit.LSP.WorkDoneProgressEnd
---@field public kind "end"
---@field public message? string Optional, a final message indicating to for example indicate the outcome<br>of the operation.

---@class linkedit.kit.LSP.SetTraceParams
---@field public value linkedit.kit.LSP.TraceValues

---@class linkedit.kit.LSP.LogTraceParams
---@field public message string
---@field public verbose? string

---@class linkedit.kit.LSP.CancelParams
---@field public id (integer | string) The request id to cancel.

---@class linkedit.kit.LSP.ProgressParams
---@field public token linkedit.kit.LSP.ProgressToken The progress token provided by the client or server.
---@field public value linkedit.kit.LSP.LSPAny The progress data.

---@class linkedit.kit.LSP.TextDocumentPositionParams
---@field public textDocument linkedit.kit.LSP.TextDocumentIdentifier The text document.
---@field public position linkedit.kit.LSP.Position The position inside the text document.

---@class linkedit.kit.LSP.WorkDoneProgressParams
---@field public workDoneToken? linkedit.kit.LSP.ProgressToken An optional token that a server can use to report work done progress.

---@class linkedit.kit.LSP.LocationLink
---@field public originSelectionRange? linkedit.kit.LSP.Range Span of the origin of this link.<br><br>Used as the underlined span for mouse interaction. Defaults to the word range at<br>the definition position.
---@field public targetUri string The target resource identifier of this link.
---@field public targetRange linkedit.kit.LSP.Range The full target range of this link. If the target for example is a symbol then target range is the<br>range enclosing this symbol not including leading/trailing whitespace but everything else<br>like comments. This information is typically used to highlight the range in the editor.
---@field public targetSelectionRange linkedit.kit.LSP.Range The range that should be selected and revealed when this link is being followed, e.g the name of a function.<br>Must be contained by the `targetRange`. See also `DocumentSymbol#range`

---@class linkedit.kit.LSP.Range
---@field public start linkedit.kit.LSP.Position The range's start position.
---@field public end linkedit.kit.LSP.Position The range's end position.

---@class linkedit.kit.LSP.ImplementationOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.StaticRegistrationOptions
---@field public id? string The id used to register the request. The id can be used to deregister<br>the request again. See also Registration#id.

---@class linkedit.kit.LSP.TypeDefinitionOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.WorkspaceFoldersChangeEvent
---@field public added linkedit.kit.LSP.WorkspaceFolder[] The array of added workspace folders
---@field public removed linkedit.kit.LSP.WorkspaceFolder[] The array of the removed workspace folders

---@class linkedit.kit.LSP.ConfigurationItem
---@field public scopeUri? string The scope to get the configuration section for.
---@field public section? string The configuration section asked for.

---@class linkedit.kit.LSP.TextDocumentIdentifier
---@field public uri string The text document's uri.

---@class linkedit.kit.LSP.Color
---@field public red integer The red component of this color in the range [0-1].
---@field public green integer The green component of this color in the range [0-1].
---@field public blue integer The blue component of this color in the range [0-1].
---@field public alpha integer The alpha component of this color in the range [0-1].

---@class linkedit.kit.LSP.DocumentColorOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.FoldingRangeOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.DeclarationOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.Position
---@field public line integer Line position in a document (zero-based).<br><br>If a line number is greater than the number of lines in a document, it defaults back to the number of lines in the document.<br>If a line number is negative, it defaults to 0.
---@field public character integer Character offset on a line in a document (zero-based).<br><br>The meaning of this offset is determined by the negotiated<br>`PositionEncodingKind`.<br><br>If the character value is greater than the line length it defaults back to the<br>line length.

---@class linkedit.kit.LSP.SelectionRangeOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.CallHierarchyOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.SemanticTokensOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public legend linkedit.kit.LSP.SemanticTokensLegend The legend used by the server
---@field public range? (boolean | {  }) Server supports providing semantic tokens for a specific range<br>of a document.
---@field public full? (boolean | { delta?: boolean }) Server supports providing semantic tokens for a full document.

---@class linkedit.kit.LSP.SemanticTokensEdit
---@field public start integer The start offset of the edit.
---@field public deleteCount integer The count of elements to remove.
---@field public data? integer[] The elements to insert.

---@class linkedit.kit.LSP.LinkedEditingRangeOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.FileCreate
---@field public uri string A file:// URI for the location of the file/folder being created.

---@class linkedit.kit.LSP.TextDocumentEdit
---@field public textDocument linkedit.kit.LSP.OptionalVersionedTextDocumentIdentifier The text document to change.
---@field public edits (linkedit.kit.LSP.TextEdit | linkedit.kit.LSP.AnnotatedTextEdit)[] The edits to be applied.<br><br>@since 3.16.0 - support for AnnotatedTextEdit. This is guarded using a<br>client capability.

---@class linkedit.kit.LSP.CreateFile : linkedit.kit.LSP.ResourceOperation
---@field public kind "create" A create
---@field public uri string The resource to create.
---@field public options? linkedit.kit.LSP.CreateFileOptions Additional options

---@class linkedit.kit.LSP.RenameFile : linkedit.kit.LSP.ResourceOperation
---@field public kind "rename" A rename
---@field public oldUri string The old (existing) location.
---@field public newUri string The new location.
---@field public options? linkedit.kit.LSP.RenameFileOptions Rename options.

---@class linkedit.kit.LSP.DeleteFile : linkedit.kit.LSP.ResourceOperation
---@field public kind "delete" A delete
---@field public uri string The file to delete.
---@field public options? linkedit.kit.LSP.DeleteFileOptions Delete options.

---@class linkedit.kit.LSP.ChangeAnnotation
---@field public label string A human-readable string describing the actual change. The string<br>is rendered prominent in the user interface.
---@field public needsConfirmation? boolean A flag which indicates that user confirmation is needed<br>before applying the change.
---@field public description? string A human-readable string which is rendered less prominent in<br>the user interface.

---@class linkedit.kit.LSP.FileOperationFilter
---@field public scheme? string A Uri scheme like `file` or `untitled`.
---@field public pattern linkedit.kit.LSP.FileOperationPattern The actual file operation pattern.

---@class linkedit.kit.LSP.FileRename
---@field public oldUri string A file:// URI for the original location of the file/folder being renamed.
---@field public newUri string A file:// URI for the new location of the file/folder being renamed.

---@class linkedit.kit.LSP.FileDelete
---@field public uri string A file:// URI for the location of the file/folder being deleted.

---@class linkedit.kit.LSP.MonikerOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.TypeHierarchyOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.InlineValueContext
---@field public frameId integer The stack frame (as a DAP Id) where the execution has stopped.
---@field public stoppedLocation linkedit.kit.LSP.Range The document range where execution has stopped.<br>Typically the end position of the range denotes the line where the inline values are shown.

---@class linkedit.kit.LSP.InlineValueText
---@field public range linkedit.kit.LSP.Range The document range for which the inline value applies.
---@field public text string The text of the inline value.

---@class linkedit.kit.LSP.InlineValueVariableLookup
---@field public range linkedit.kit.LSP.Range The document range for which the inline value applies.<br>The range is used to extract the variable name from the underlying document.
---@field public variableName? string If specified the name of the variable to look up.
---@field public caseSensitiveLookup boolean How to perform the lookup.

---@class linkedit.kit.LSP.InlineValueEvaluatableExpression
---@field public range linkedit.kit.LSP.Range The document range for which the inline value applies.<br>The range is used to extract the evaluatable expression from the underlying document.
---@field public expression? string If specified the expression overrides the extracted expression.

---@class linkedit.kit.LSP.InlineValueOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.InlayHintLabelPart
---@field public value string The value of this label part.
---@field public tooltip? (string | linkedit.kit.LSP.MarkupContent) The tooltip text when you hover over this label part. Depending on<br>the client capability `inlayHint.resolveSupport` clients might resolve<br>this property late using the resolve request.
---@field public location? linkedit.kit.LSP.Location An optional source code location that represents this<br>label part.<br><br>The editor will use this location for the hover and for code navigation<br>features: This part will become a clickable link that resolves to the<br>definition of the symbol at the given location (not necessarily the<br>location itself), it shows the hover that shows at the given location,<br>and it shows a context menu with further code navigation commands.<br><br>Depending on the client capability `inlayHint.resolveSupport` clients<br>might resolve this property late using the resolve request.
---@field public command? linkedit.kit.LSP.Command An optional command for this label part.<br><br>Depending on the client capability `inlayHint.resolveSupport` clients<br>might resolve this property late using the resolve request.

---@class linkedit.kit.LSP.MarkupContent
---@field public kind linkedit.kit.LSP.MarkupKind The type of the Markup
---@field public value string The content itself

---@class linkedit.kit.LSP.InlayHintOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public resolveProvider? boolean The server provides support to resolve additional<br>information for an inlay hint item.

---@class linkedit.kit.LSP.RelatedFullDocumentDiagnosticReport : linkedit.kit.LSP.FullDocumentDiagnosticReport
---@field public relatedDocuments? table<string, (linkedit.kit.LSP.FullDocumentDiagnosticReport | linkedit.kit.LSP.UnchangedDocumentDiagnosticReport)> Diagnostics of related documents. This information is useful<br>in programming languages where code in a file A can generate<br>diagnostics in a file B which A depends on. An example of<br>such a language is C/C++ where marco definitions in a file<br>a.cpp and result in errors in a header file b.hpp.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.RelatedUnchangedDocumentDiagnosticReport : linkedit.kit.LSP.UnchangedDocumentDiagnosticReport
---@field public relatedDocuments? table<string, (linkedit.kit.LSP.FullDocumentDiagnosticReport | linkedit.kit.LSP.UnchangedDocumentDiagnosticReport)> Diagnostics of related documents. This information is useful<br>in programming languages where code in a file A can generate<br>diagnostics in a file B which A depends on. An example of<br>such a language is C/C++ where marco definitions in a file<br>a.cpp and result in errors in a header file b.hpp.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.FullDocumentDiagnosticReport
---@field public kind "full" A full document diagnostic report.
---@field public resultId? string An optional result id. If provided it will<br>be sent on the next diagnostic request for the<br>same document.
---@field public items linkedit.kit.LSP.Diagnostic[] The actual items.

---@class linkedit.kit.LSP.UnchangedDocumentDiagnosticReport
---@field public kind "unchanged" A document diagnostic report indicating<br>no changes to the last result. A server can<br>only return `unchanged` if result ids are<br>provided.
---@field public resultId string A result id which will be sent on the next<br>diagnostic request for the same document.

---@class linkedit.kit.LSP.DiagnosticOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public identifier? string An optional identifier under which the diagnostics are<br>managed by the client.
---@field public interFileDependencies boolean Whether the language has inter file dependencies meaning that<br>editing code in one file can result in a different diagnostic<br>set in another file. Inter file dependencies are common for<br>most programming languages and typically uncommon for linters.
---@field public workspaceDiagnostics boolean The server provides support for workspace diagnostics as well.

---@class linkedit.kit.LSP.PreviousResultId
---@field public uri string The URI for which the client knowns a<br>result id.
---@field public value string The value of the previous result id.

---@class linkedit.kit.LSP.NotebookDocument
---@field public uri string The notebook document's uri.
---@field public notebookType string The type of the notebook.
---@field public version integer The version number of this document (it will increase after each<br>change, including undo/redo).
---@field public metadata? linkedit.kit.LSP.LSPObject Additional metadata stored with the notebook<br>document.<br><br>Note: should always be an object literal (e.g. LSPObject)
---@field public cells linkedit.kit.LSP.NotebookCell[] The cells of a notebook.

---@class linkedit.kit.LSP.TextDocumentItem
---@field public uri string The text document's uri.
---@field public languageId string The text document's language identifier.
---@field public version integer The version number of this document (it will increase after each<br>change, including undo/redo).
---@field public text string The content of the opened text document.

---@class linkedit.kit.LSP.VersionedNotebookDocumentIdentifier
---@field public version integer The version number of this notebook document.
---@field public uri string The notebook document's uri.

---@class linkedit.kit.LSP.NotebookDocumentChangeEvent
---@field public metadata? linkedit.kit.LSP.LSPObject The changed meta data if any.<br><br>Note: should always be an object literal (e.g. LSPObject)
---@field public cells? linkedit.kit.LSP.NotebookDocumentChangeEvent.cells Changes to cells

---@class linkedit.kit.LSP.NotebookDocumentChangeEvent.cells
---@field public structure? linkedit.kit.LSP.NotebookDocumentChangeEvent.cells.structure Changes to the cell structure to add or<br>remove cells.
---@field public data? linkedit.kit.LSP.NotebookCell[] Changes to notebook cells properties like its<br>kind, execution summary or metadata.
---@field public textContent? { document: linkedit.kit.LSP.VersionedTextDocumentIdentifier, changes: linkedit.kit.LSP.TextDocumentContentChangeEvent[] }[] Changes to the text content of notebook cells.

---@class linkedit.kit.LSP.NotebookDocumentChangeEvent.cells.structure
---@field public array linkedit.kit.LSP.NotebookCellArrayChange The change to the cell array.
---@field public didOpen? linkedit.kit.LSP.TextDocumentItem[] Additional opened cell text documents.
---@field public didClose? linkedit.kit.LSP.TextDocumentIdentifier[] Additional closed cell text documents.

---@class linkedit.kit.LSP.NotebookDocumentIdentifier
---@field public uri string The notebook document's uri.

---@class linkedit.kit.LSP.Registration
---@field public id string The id used to register the request. The id can be used to deregister<br>the request again.
---@field public method string The method / capability to register for.
---@field public registerOptions? linkedit.kit.LSP.LSPAny Options necessary for the registration.

---@class linkedit.kit.LSP.Unregistration
---@field public id string The id used to unregister the request or notification. Usually an id<br>provided during the register request.
---@field public method string The method to unregister for.

---@class linkedit.kit.LSP._InitializeParams : linkedit.kit.LSP.WorkDoneProgressParams
---@field public processId (integer | nil) The process Id of the parent process that started<br>the server.<br><br>Is `null` if the process has not been started by another process.<br>If the parent process is not alive then the server should exit.
---@field public clientInfo? linkedit.kit.LSP._InitializeParams.clientInfo Information about the client<br><br>@since 3.15.0
---@field public locale? string The locale the client is currently showing the user interface<br>in. This must not necessarily be the locale of the operating<br>system.<br><br>Uses IETF language tags as the value's syntax<br>(See https://en.wikipedia.org/wiki/IETF_language_tag)<br><br>@since 3.16.0
---@field public rootPath? (string | nil) The rootPath of the workspace. Is null<br>if no folder is open.<br><br>@deprecated in favour of rootUri.
---@field public rootUri (string | nil) The rootUri of the workspace. Is null if no<br>folder is open. If both `rootPath` and `rootUri` are set<br>`rootUri` wins.<br><br>@deprecated in favour of workspaceFolders.
---@field public capabilities linkedit.kit.LSP.ClientCapabilities The capabilities provided by the client (editor or tool)
---@field public initializationOptions? linkedit.kit.LSP.LSPAny User provided initialization options.
---@field public trace? ("off" | "messages" | "compact" | "verbose") The initial trace setting. If omitted trace is disabled ('off').

---@class linkedit.kit.LSP._InitializeParams.clientInfo
---@field public name string The name of the client as defined by the client.
---@field public version? string The client's version as defined by the client.

---@class linkedit.kit.LSP.WorkspaceFoldersInitializeParams
---@field public workspaceFolders? (linkedit.kit.LSP.WorkspaceFolder[] | nil) The workspace folders configured in the client when the server starts.<br><br>This property is only available if the client supports workspace folders.<br>It can be `null` if the client supports workspace folders but none are<br>configured.<br><br>@since 3.6.0

---@class linkedit.kit.LSP.ServerCapabilities
---@field public positionEncoding? linkedit.kit.LSP.PositionEncodingKind The position encoding the server picked from the encodings offered<br>by the client via the client capability `general.positionEncodings`.<br><br>If the client didn't provide any position encodings the only valid<br>value that a server can return is 'utf-16'.<br><br>If omitted it defaults to 'utf-16'.<br><br>@since 3.17.0
---@field public textDocumentSync? (linkedit.kit.LSP.TextDocumentSyncOptions | linkedit.kit.LSP.TextDocumentSyncKind) Defines how text documents are synced. Is either a detailed structure<br>defining each notification or for backwards compatibility the<br>TextDocumentSyncKind number.
---@field public notebookDocumentSync? (linkedit.kit.LSP.NotebookDocumentSyncOptions | linkedit.kit.LSP.NotebookDocumentSyncRegistrationOptions) Defines how notebook documents are synced.<br><br>@since 3.17.0
---@field public completionProvider? linkedit.kit.LSP.CompletionOptions The server provides completion support.
---@field public hoverProvider? (boolean | linkedit.kit.LSP.HoverOptions) The server provides hover support.
---@field public signatureHelpProvider? linkedit.kit.LSP.SignatureHelpOptions The server provides signature help support.
---@field public declarationProvider? (boolean | linkedit.kit.LSP.DeclarationOptions | linkedit.kit.LSP.DeclarationRegistrationOptions) The server provides Goto Declaration support.
---@field public definitionProvider? (boolean | linkedit.kit.LSP.DefinitionOptions) The server provides goto definition support.
---@field public typeDefinitionProvider? (boolean | linkedit.kit.LSP.TypeDefinitionOptions | linkedit.kit.LSP.TypeDefinitionRegistrationOptions) The server provides Goto Type Definition support.
---@field public implementationProvider? (boolean | linkedit.kit.LSP.ImplementationOptions | linkedit.kit.LSP.ImplementationRegistrationOptions) The server provides Goto Implementation support.
---@field public referencesProvider? (boolean | linkedit.kit.LSP.ReferenceOptions) The server provides find references support.
---@field public documentHighlightProvider? (boolean | linkedit.kit.LSP.DocumentHighlightOptions) The server provides document highlight support.
---@field public documentSymbolProvider? (boolean | linkedit.kit.LSP.DocumentSymbolOptions) The server provides document symbol support.
---@field public codeActionProvider? (boolean | linkedit.kit.LSP.CodeActionOptions) The server provides code actions. CodeActionOptions may only be<br>specified if the client states that it supports<br>`codeActionLiteralSupport` in its initial `initialize` request.
---@field public codeLensProvider? linkedit.kit.LSP.CodeLensOptions The server provides code lens.
---@field public documentLinkProvider? linkedit.kit.LSP.DocumentLinkOptions The server provides document link support.
---@field public colorProvider? (boolean | linkedit.kit.LSP.DocumentColorOptions | linkedit.kit.LSP.DocumentColorRegistrationOptions) The server provides color provider support.
---@field public workspaceSymbolProvider? (boolean | linkedit.kit.LSP.WorkspaceSymbolOptions) The server provides workspace symbol support.
---@field public documentFormattingProvider? (boolean | linkedit.kit.LSP.DocumentFormattingOptions) The server provides document formatting.
---@field public documentRangeFormattingProvider? (boolean | linkedit.kit.LSP.DocumentRangeFormattingOptions) The server provides document range formatting.
---@field public documentOnTypeFormattingProvider? linkedit.kit.LSP.DocumentOnTypeFormattingOptions The server provides document formatting on typing.
---@field public renameProvider? (boolean | linkedit.kit.LSP.RenameOptions) The server provides rename support. RenameOptions may only be<br>specified if the client states that it supports<br>`prepareSupport` in its initial `initialize` request.
---@field public foldingRangeProvider? (boolean | linkedit.kit.LSP.FoldingRangeOptions | linkedit.kit.LSP.FoldingRangeRegistrationOptions) The server provides folding provider support.
---@field public selectionRangeProvider? (boolean | linkedit.kit.LSP.SelectionRangeOptions | linkedit.kit.LSP.SelectionRangeRegistrationOptions) The server provides selection range support.
---@field public executeCommandProvider? linkedit.kit.LSP.ExecuteCommandOptions The server provides execute command support.
---@field public callHierarchyProvider? (boolean | linkedit.kit.LSP.CallHierarchyOptions | linkedit.kit.LSP.CallHierarchyRegistrationOptions) The server provides call hierarchy support.<br><br>@since 3.16.0
---@field public linkedEditingRangeProvider? (boolean | linkedit.kit.LSP.LinkedEditingRangeOptions | linkedit.kit.LSP.LinkedEditingRangeRegistrationOptions) The server provides linked editing range support.<br><br>@since 3.16.0
---@field public semanticTokensProvider? (linkedit.kit.LSP.SemanticTokensOptions | linkedit.kit.LSP.SemanticTokensRegistrationOptions) The server provides semantic tokens support.<br><br>@since 3.16.0
---@field public monikerProvider? (boolean | linkedit.kit.LSP.MonikerOptions | linkedit.kit.LSP.MonikerRegistrationOptions) The server provides moniker support.<br><br>@since 3.16.0
---@field public typeHierarchyProvider? (boolean | linkedit.kit.LSP.TypeHierarchyOptions | linkedit.kit.LSP.TypeHierarchyRegistrationOptions) The server provides type hierarchy support.<br><br>@since 3.17.0
---@field public inlineValueProvider? (boolean | linkedit.kit.LSP.InlineValueOptions | linkedit.kit.LSP.InlineValueRegistrationOptions) The server provides inline values.<br><br>@since 3.17.0
---@field public inlayHintProvider? (boolean | linkedit.kit.LSP.InlayHintOptions | linkedit.kit.LSP.InlayHintRegistrationOptions) The server provides inlay hints.<br><br>@since 3.17.0
---@field public diagnosticProvider? (linkedit.kit.LSP.DiagnosticOptions | linkedit.kit.LSP.DiagnosticRegistrationOptions) The server has support for pull model diagnostics.<br><br>@since 3.17.0
---@field public workspace? linkedit.kit.LSP.ServerCapabilities.workspace Workspace specific server capabilities.
---@field public experimental? linkedit.kit.LSP.LSPAny Experimental server capabilities.

---@class linkedit.kit.LSP.ServerCapabilities.workspace
---@field public workspaceFolders? linkedit.kit.LSP.WorkspaceFoldersServerCapabilities The server supports workspace folder.<br><br>@since 3.6.0
---@field public fileOperations? linkedit.kit.LSP.FileOperationOptions The server is interested in notifications/requests for operations on files.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.VersionedTextDocumentIdentifier : linkedit.kit.LSP.TextDocumentIdentifier
---@field public version integer The version number of this document.

---@class linkedit.kit.LSP.SaveOptions
---@field public includeText? boolean The client is supposed to include the content on save.

---@class linkedit.kit.LSP.FileEvent
---@field public uri string The file's uri.
---@field public type linkedit.kit.LSP.FileChangeType The change type.

---@class linkedit.kit.LSP.FileSystemWatcher
---@field public globPattern linkedit.kit.LSP.GlobPattern The glob pattern to watch. See {@link GlobPattern glob pattern} for more detail.<br><br>@since 3.17.0 support for relative patterns.
---@field public kind? linkedit.kit.LSP.WatchKind The kind of events of interest. If omitted it defaults<br>to WatchKind.Create | WatchKind.Change | WatchKind.Delete<br>which is 7.

---@class linkedit.kit.LSP.Diagnostic
---@field public range linkedit.kit.LSP.Range The range at which the message applies
---@field public severity? linkedit.kit.LSP.DiagnosticSeverity The diagnostic's severity. Can be omitted. If omitted it is up to the<br>client to interpret diagnostics as error, warning, info or hint.
---@field public code? (integer | string) The diagnostic's code, which usually appear in the user interface.
---@field public codeDescription? linkedit.kit.LSP.CodeDescription An optional property to describe the error code.<br>Requires the code field (above) to be present/not null.<br><br>@since 3.16.0
---@field public source? string A human-readable string describing the source of this<br>diagnostic, e.g. 'typescript' or 'super lint'. It usually<br>appears in the user interface.
---@field public message string The diagnostic's message. It usually appears in the user interface
---@field public tags? linkedit.kit.LSP.DiagnosticTag[] Additional metadata about the diagnostic.<br><br>@since 3.15.0
---@field public relatedInformation? linkedit.kit.LSP.DiagnosticRelatedInformation[] An array of related diagnostic information, e.g. when symbol-names within<br>a scope collide all definitions can be marked via this property.
---@field public data? linkedit.kit.LSP.LSPAny A data entry field that is preserved between a `textDocument/publishDiagnostics`<br>notification and `textDocument/codeAction` request.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.CompletionContext
---@field public triggerKind linkedit.kit.LSP.CompletionTriggerKind How the completion was triggered.
---@field public triggerCharacter? string The trigger character (a single character) that has trigger code complete.<br>Is undefined if `triggerKind !== CompletionTriggerKind.TriggerCharacter`

---@class linkedit.kit.LSP.CompletionItemLabelDetails
---@field public detail? string An optional string which is rendered less prominently directly after {@link CompletionItem.label label},<br>without any spacing. Should be used for function signatures and type annotations.
---@field public description? string An optional string which is rendered less prominently after {@link CompletionItem.detail}. Should be used<br>for fully qualified names and file paths.

---@class linkedit.kit.LSP.InsertReplaceEdit
---@field public newText string The string to be inserted.
---@field public insert linkedit.kit.LSP.Range The range if the insert is requested
---@field public replace linkedit.kit.LSP.Range The range if the replace is requested.

---@class linkedit.kit.LSP.CompletionOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public triggerCharacters? string[] Most tools trigger completion request automatically without explicitly requesting<br>it using a keyboard shortcut (e.g. Ctrl+Space). Typically they do so when the user<br>starts to type an identifier. For example if the user types `c` in a JavaScript file<br>code complete will automatically pop up present `console` besides others as a<br>completion item. Characters that make up identifiers don't need to be listed here.<br><br>If code complete should automatically be trigger on characters not being valid inside<br>an identifier (for example `.` in JavaScript) list them in `triggerCharacters`.
---@field public allCommitCharacters? string[] The list of all possible characters that commit a completion. This field can be used<br>if clients don't support individual commit characters per completion item. See<br>`ClientCapabilities.textDocument.completion.completionItem.commitCharactersSupport`<br><br>If a server provides both `allCommitCharacters` and commit characters on an individual<br>completion item the ones on the completion item win.<br><br>@since 3.2.0
---@field public resolveProvider? boolean The server provides support to resolve additional<br>information for a completion item.
---@field public completionItem? linkedit.kit.LSP.CompletionOptions.completionItem The server supports the following `CompletionItem` specific<br>capabilities.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.CompletionOptions.completionItem
---@field public labelDetailsSupport? boolean The server has support for completion item label<br>details (see also `CompletionItemLabelDetails`) when<br>receiving a completion item in a resolve call.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.HoverOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.SignatureHelpContext
---@field public triggerKind linkedit.kit.LSP.SignatureHelpTriggerKind Action that caused signature help to be triggered.
---@field public triggerCharacter? string Character that caused signature help to be triggered.<br><br>This is undefined when `triggerKind !== SignatureHelpTriggerKind.TriggerCharacter`
---@field public isRetrigger boolean `true` if signature help was already showing when it was triggered.<br><br>Retriggers occurs when the signature help is already active and can be caused by actions such as<br>typing a trigger character, a cursor move, or document content changes.
---@field public activeSignatureHelp? linkedit.kit.LSP.SignatureHelp The currently active `SignatureHelp`.<br><br>The `activeSignatureHelp` has its `SignatureHelp.activeSignature` field updated based on<br>the user navigating through available signatures.

---@class linkedit.kit.LSP.SignatureInformation
---@field public label string The label of this signature. Will be shown in<br>the UI.
---@field public documentation? (string | linkedit.kit.LSP.MarkupContent) The human-readable doc-comment of this signature. Will be shown<br>in the UI but can be omitted.
---@field public parameters? linkedit.kit.LSP.ParameterInformation[] The parameters of this signature.
---@field public activeParameter? integer The index of the active parameter.<br><br>If provided, this is used in place of `SignatureHelp.activeParameter`.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.SignatureHelpOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public triggerCharacters? string[] List of characters that trigger signature help automatically.
---@field public retriggerCharacters? string[] List of characters that re-trigger signature help.<br><br>These trigger characters are only active when signature help is already showing. All trigger characters<br>are also counted as re-trigger characters.<br><br>@since 3.15.0

---@class linkedit.kit.LSP.DefinitionOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.ReferenceContext
---@field public includeDeclaration boolean Include the declaration of the current symbol.

---@class linkedit.kit.LSP.ReferenceOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.DocumentHighlightOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.BaseSymbolInformation
---@field public name string The name of this symbol.
---@field public kind linkedit.kit.LSP.SymbolKind The kind of this symbol.
---@field public tags? linkedit.kit.LSP.SymbolTag[] Tags for this symbol.<br><br>@since 3.16.0
---@field public containerName? string The name of the symbol containing this symbol. This information is for<br>user interface purposes (e.g. to render a qualifier in the user interface<br>if necessary). It can't be used to re-infer a hierarchy for the document<br>symbols.

---@class linkedit.kit.LSP.DocumentSymbolOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public label? string A human-readable string that is shown when multiple outlines trees<br>are shown for the same document.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.CodeActionContext
---@field public diagnostics linkedit.kit.LSP.Diagnostic[] An array of diagnostics known on the client side overlapping the range provided to the<br>`textDocument/codeAction` request. They are provided so that the server knows which<br>errors are currently presented to the user for the given range. There is no guarantee<br>that these accurately reflect the error state of the resource. The primary parameter<br>to compute code actions is the provided range.
---@field public only? linkedit.kit.LSP.CodeActionKind[] Requested kind of actions to return.<br><br>Actions not of this kind are filtered out by the client before being shown. So servers<br>can omit computing them.
---@field public triggerKind? linkedit.kit.LSP.CodeActionTriggerKind The reason why code actions were requested.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.CodeActionOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public codeActionKinds? linkedit.kit.LSP.CodeActionKind[] CodeActionKinds that this server may return.<br><br>The list of kinds may be generic, such as `CodeActionKind.Refactor`, or the server<br>may list out every specific kind they provide.
---@field public resolveProvider? boolean The server provides support to resolve additional<br>information for a code action.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.WorkspaceSymbolOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public resolveProvider? boolean The server provides support to resolve additional<br>information for a workspace symbol.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.CodeLensOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public resolveProvider? boolean Code lens has a resolve provider as well.

---@class linkedit.kit.LSP.DocumentLinkOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public resolveProvider? boolean Document links have a resolve provider as well.

---@class linkedit.kit.LSP.FormattingOptions
---@field public tabSize integer Size of a tab in spaces.
---@field public insertSpaces boolean Prefer spaces over tabs.
---@field public trimTrailingWhitespace? boolean Trim trailing whitespace on a line.<br><br>@since 3.15.0
---@field public insertFinalNewline? boolean Insert a newline character at the end of the file if one does not exist.<br><br>@since 3.15.0
---@field public trimFinalNewlines? boolean Trim all newlines after the final newline at the end of the file.<br><br>@since 3.15.0

---@class linkedit.kit.LSP.DocumentFormattingOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.DocumentRangeFormattingOptions : linkedit.kit.LSP.WorkDoneProgressOptions

---@class linkedit.kit.LSP.DocumentOnTypeFormattingOptions
---@field public firstTriggerCharacter string A character on which formatting should be triggered, like `{`.
---@field public moreTriggerCharacter? string[] More trigger characters.

---@class linkedit.kit.LSP.RenameOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public prepareProvider? boolean Renames should be checked and tested before being executed.<br><br>@since version 3.12.0

---@class linkedit.kit.LSP.ExecuteCommandOptions : linkedit.kit.LSP.WorkDoneProgressOptions
---@field public commands string[] The commands to be executed on the server

---@class linkedit.kit.LSP.SemanticTokensLegend
---@field public tokenTypes string[] The token types a server uses.
---@field public tokenModifiers string[] The token modifiers a server uses.

---@class linkedit.kit.LSP.OptionalVersionedTextDocumentIdentifier : linkedit.kit.LSP.TextDocumentIdentifier
---@field public version (integer | nil) The version number of this document. If a versioned text document identifier<br>is sent from the server to the client and the file is not open in the editor<br>(the server has not received an open notification before) the server can send<br>`null` to indicate that the version is unknown and the content on disk is the<br>truth (as specified with document content ownership).

---@class linkedit.kit.LSP.AnnotatedTextEdit : linkedit.kit.LSP.TextEdit
---@field public annotationId linkedit.kit.LSP.ChangeAnnotationIdentifier The actual identifier of the change annotation

---@class linkedit.kit.LSP.ResourceOperation
---@field public kind string The resource operation kind.
---@field public annotationId? linkedit.kit.LSP.ChangeAnnotationIdentifier An optional annotation identifier describing the operation.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.CreateFileOptions
---@field public overwrite? boolean Overwrite existing file. Overwrite wins over `ignoreIfExists`
---@field public ignoreIfExists? boolean Ignore if exists.

---@class linkedit.kit.LSP.RenameFileOptions
---@field public overwrite? boolean Overwrite target if existing. Overwrite wins over `ignoreIfExists`
---@field public ignoreIfExists? boolean Ignores if target exists.

---@class linkedit.kit.LSP.DeleteFileOptions
---@field public recursive? boolean Delete the content recursively if a folder is denoted.
---@field public ignoreIfNotExists? boolean Ignore the operation if the file doesn't exist.

---@class linkedit.kit.LSP.FileOperationPattern
---@field public glob string The glob pattern to match. Glob patterns can have the following syntax:<br>- `*` to match one or more characters in a path segment<br>- `?` to match on one character in a path segment<br>- `**` to match any number of path segments, including none<br>- `{}` to group sub patterns into an OR expression. (e.g. `**​/*.{ts,js}` matches all TypeScript and JavaScript files)<br>- `[]` to declare a range of characters to match in a path segment (e.g., `example.[0-9]` to match on `example.0`, `example.1`, …)<br>- `[!...]` to negate a range of characters to match in a path segment (e.g., `example.[!0-9]` to match on `example.a`, `example.b`, but not `example.0`)
---@field public matches? linkedit.kit.LSP.FileOperationPatternKind Whether to match files or folders with this pattern.<br><br>Matches both if undefined.
---@field public options? linkedit.kit.LSP.FileOperationPatternOptions Additional options used during matching.

---@class linkedit.kit.LSP.WorkspaceFullDocumentDiagnosticReport : linkedit.kit.LSP.FullDocumentDiagnosticReport
---@field public uri string The URI for which diagnostic information is reported.
---@field public version (integer | nil) The version number for which the diagnostics are reported.<br>If the document is not marked as open `null` can be provided.

---@class linkedit.kit.LSP.WorkspaceUnchangedDocumentDiagnosticReport : linkedit.kit.LSP.UnchangedDocumentDiagnosticReport
---@field public uri string The URI for which diagnostic information is reported.
---@field public version (integer | nil) The version number for which the diagnostics are reported.<br>If the document is not marked as open `null` can be provided.

---@class linkedit.kit.LSP.LSPObject

---@class linkedit.kit.LSP.NotebookCell
---@field public kind linkedit.kit.LSP.NotebookCellKind The cell's kind
---@field public document string The URI of the cell's text document<br>content.
---@field public metadata? linkedit.kit.LSP.LSPObject Additional metadata stored with the cell.<br><br>Note: should always be an object literal (e.g. LSPObject)
---@field public executionSummary? linkedit.kit.LSP.ExecutionSummary Additional execution summary information<br>if supported by the client.

---@class linkedit.kit.LSP.NotebookCellArrayChange
---@field public start integer The start oftest of the cell that changed.
---@field public deleteCount integer The deleted cells
---@field public cells? linkedit.kit.LSP.NotebookCell[] The new cells, if any

---@class linkedit.kit.LSP.ClientCapabilities
---@field public workspace? linkedit.kit.LSP.WorkspaceClientCapabilities Workspace specific client capabilities.
---@field public textDocument? linkedit.kit.LSP.TextDocumentClientCapabilities Text document specific client capabilities.
---@field public notebookDocument? linkedit.kit.LSP.NotebookDocumentClientCapabilities Capabilities specific to the notebook document support.<br><br>@since 3.17.0
---@field public window? linkedit.kit.LSP.WindowClientCapabilities Window specific client capabilities.
---@field public general? linkedit.kit.LSP.GeneralClientCapabilities General client capabilities.<br><br>@since 3.16.0
---@field public experimental? linkedit.kit.LSP.LSPAny Experimental client capabilities.

---@class linkedit.kit.LSP.TextDocumentSyncOptions
---@field public openClose? boolean Open and close notifications are sent to the server. If omitted open close notification should not<br>be sent.
---@field public change? linkedit.kit.LSP.TextDocumentSyncKind Change notifications are sent to the server. See TextDocumentSyncKind.None, TextDocumentSyncKind.Full<br>and TextDocumentSyncKind.Incremental. If omitted it defaults to TextDocumentSyncKind.None.
---@field public willSave? boolean If present will save notifications are sent to the server. If omitted the notification should not be<br>sent.
---@field public willSaveWaitUntil? boolean If present will save wait until requests are sent to the server. If omitted the request should not be<br>sent.
---@field public save? (boolean | linkedit.kit.LSP.SaveOptions) If present save notifications are sent to the server. If omitted the notification should not be<br>sent.

---@class linkedit.kit.LSP.NotebookDocumentSyncOptions
---@field public notebookSelector ({ notebook: (string | linkedit.kit.LSP.NotebookDocumentFilter), cells?: { language: string }[] } | { notebook?: (string | linkedit.kit.LSP.NotebookDocumentFilter), cells: { language: string }[] })[] The notebooks to be synced
---@field public save? boolean Whether save notification should be forwarded to<br>the server. Will only be honored if mode === `notebook`.

---@class linkedit.kit.LSP.NotebookDocumentSyncRegistrationOptions : linkedit.kit.LSP.NotebookDocumentSyncOptions, linkedit.kit.LSP.StaticRegistrationOptions

---@class linkedit.kit.LSP.WorkspaceFoldersServerCapabilities
---@field public supported? boolean The server has support for workspace folders
---@field public changeNotifications? (string | boolean) Whether the server wants to receive workspace folder<br>change notifications.<br><br>If a string is provided the string is treated as an ID<br>under which the notification is registered on the client<br>side. The ID can be used to unregister for these events<br>using the `client/unregisterCapability` request.

---@class linkedit.kit.LSP.FileOperationOptions
---@field public didCreate? linkedit.kit.LSP.FileOperationRegistrationOptions The server is interested in receiving didCreateFiles notifications.
---@field public willCreate? linkedit.kit.LSP.FileOperationRegistrationOptions The server is interested in receiving willCreateFiles requests.
---@field public didRename? linkedit.kit.LSP.FileOperationRegistrationOptions The server is interested in receiving didRenameFiles notifications.
---@field public willRename? linkedit.kit.LSP.FileOperationRegistrationOptions The server is interested in receiving willRenameFiles requests.
---@field public didDelete? linkedit.kit.LSP.FileOperationRegistrationOptions The server is interested in receiving didDeleteFiles file notifications.
---@field public willDelete? linkedit.kit.LSP.FileOperationRegistrationOptions The server is interested in receiving willDeleteFiles file requests.

---@class linkedit.kit.LSP.CodeDescription
---@field public href string An URI to open with more information about the diagnostic error.

---@class linkedit.kit.LSP.DiagnosticRelatedInformation
---@field public location linkedit.kit.LSP.Location The location of this related diagnostic information.
---@field public message string The message of this related diagnostic information.

---@class linkedit.kit.LSP.ParameterInformation
---@field public label (string | (integer | integer)[]) The label of this parameter information.<br><br>Either a string or an inclusive start and exclusive end offsets within its containing<br>signature label. (see SignatureInformation.label). The offsets are based on a UTF-16<br>string representation as `Position` and `Range` does.<br><br>*Note*: a label of type string should be a substring of its containing signature label.<br>Its intended use case is to highlight the parameter label part in the `SignatureInformation.label`.
---@field public documentation? (string | linkedit.kit.LSP.MarkupContent) The human-readable doc-comment of this parameter. Will be shown<br>in the UI but can be omitted.

---@class linkedit.kit.LSP.NotebookCellTextDocumentFilter
---@field public notebook (string | linkedit.kit.LSP.NotebookDocumentFilter) A filter that matches against the notebook<br>containing the notebook cell. If a string<br>value is provided it matches against the<br>notebook type. '*' matches every notebook.
---@field public language? string A language id like `python`.<br><br>Will be matched against the language id of the<br>notebook cell document. '*' matches every language.

---@class linkedit.kit.LSP.FileOperationPatternOptions
---@field public ignoreCase? boolean The pattern should be matched ignoring casing.

---@class linkedit.kit.LSP.ExecutionSummary
---@field public executionOrder integer A strict monotonically increasing value<br>indicating the execution order of a cell<br>inside a notebook.
---@field public success? boolean Whether the execution was successful or<br>not if known by the client.

---@class linkedit.kit.LSP.WorkspaceClientCapabilities
---@field public applyEdit? boolean The client supports applying batch edits<br>to the workspace by supporting the request<br>'workspace/applyEdit'
---@field public workspaceEdit? linkedit.kit.LSP.WorkspaceEditClientCapabilities Capabilities specific to `WorkspaceEdit`s.
---@field public didChangeConfiguration? linkedit.kit.LSP.DidChangeConfigurationClientCapabilities Capabilities specific to the `workspace/didChangeConfiguration` notification.
---@field public didChangeWatchedFiles? linkedit.kit.LSP.DidChangeWatchedFilesClientCapabilities Capabilities specific to the `workspace/didChangeWatchedFiles` notification.
---@field public symbol? linkedit.kit.LSP.WorkspaceSymbolClientCapabilities Capabilities specific to the `workspace/symbol` request.
---@field public executeCommand? linkedit.kit.LSP.ExecuteCommandClientCapabilities Capabilities specific to the `workspace/executeCommand` request.
---@field public workspaceFolders? boolean The client has support for workspace folders.<br><br>@since 3.6.0
---@field public configuration? boolean The client supports `workspace/configuration` requests.<br><br>@since 3.6.0
---@field public semanticTokens? linkedit.kit.LSP.SemanticTokensWorkspaceClientCapabilities Capabilities specific to the semantic token requests scoped to the<br>workspace.<br><br>@since 3.16.0.
---@field public codeLens? linkedit.kit.LSP.CodeLensWorkspaceClientCapabilities Capabilities specific to the code lens requests scoped to the<br>workspace.<br><br>@since 3.16.0.
---@field public fileOperations? linkedit.kit.LSP.FileOperationClientCapabilities The client has support for file notifications/requests for user operations on files.<br><br>Since 3.16.0
---@field public inlineValue? linkedit.kit.LSP.InlineValueWorkspaceClientCapabilities Capabilities specific to the inline values requests scoped to the<br>workspace.<br><br>@since 3.17.0.
---@field public inlayHint? linkedit.kit.LSP.InlayHintWorkspaceClientCapabilities Capabilities specific to the inlay hint requests scoped to the<br>workspace.<br><br>@since 3.17.0.
---@field public diagnostics? linkedit.kit.LSP.DiagnosticWorkspaceClientCapabilities Capabilities specific to the diagnostic requests scoped to the<br>workspace.<br><br>@since 3.17.0.

---@class linkedit.kit.LSP.TextDocumentClientCapabilities
---@field public synchronization? linkedit.kit.LSP.TextDocumentSyncClientCapabilities Defines which synchronization capabilities the client supports.
---@field public completion? linkedit.kit.LSP.CompletionClientCapabilities Capabilities specific to the `textDocument/completion` request.
---@field public hover? linkedit.kit.LSP.HoverClientCapabilities Capabilities specific to the `textDocument/hover` request.
---@field public signatureHelp? linkedit.kit.LSP.SignatureHelpClientCapabilities Capabilities specific to the `textDocument/signatureHelp` request.
---@field public declaration? linkedit.kit.LSP.DeclarationClientCapabilities Capabilities specific to the `textDocument/declaration` request.<br><br>@since 3.14.0
---@field public definition? linkedit.kit.LSP.DefinitionClientCapabilities Capabilities specific to the `textDocument/definition` request.
---@field public typeDefinition? linkedit.kit.LSP.TypeDefinitionClientCapabilities Capabilities specific to the `textDocument/typeDefinition` request.<br><br>@since 3.6.0
---@field public implementation? linkedit.kit.LSP.ImplementationClientCapabilities Capabilities specific to the `textDocument/implementation` request.<br><br>@since 3.6.0
---@field public references? linkedit.kit.LSP.ReferenceClientCapabilities Capabilities specific to the `textDocument/references` request.
---@field public documentHighlight? linkedit.kit.LSP.DocumentHighlightClientCapabilities Capabilities specific to the `textDocument/documentHighlight` request.
---@field public documentSymbol? linkedit.kit.LSP.DocumentSymbolClientCapabilities Capabilities specific to the `textDocument/documentSymbol` request.
---@field public codeAction? linkedit.kit.LSP.CodeActionClientCapabilities Capabilities specific to the `textDocument/codeAction` request.
---@field public codeLens? linkedit.kit.LSP.CodeLensClientCapabilities Capabilities specific to the `textDocument/codeLens` request.
---@field public documentLink? linkedit.kit.LSP.DocumentLinkClientCapabilities Capabilities specific to the `textDocument/documentLink` request.
---@field public colorProvider? linkedit.kit.LSP.DocumentColorClientCapabilities Capabilities specific to the `textDocument/documentColor` and the<br>`textDocument/colorPresentation` request.<br><br>@since 3.6.0
---@field public formatting? linkedit.kit.LSP.DocumentFormattingClientCapabilities Capabilities specific to the `textDocument/formatting` request.
---@field public rangeFormatting? linkedit.kit.LSP.DocumentRangeFormattingClientCapabilities Capabilities specific to the `textDocument/rangeFormatting` request.
---@field public onTypeFormatting? linkedit.kit.LSP.DocumentOnTypeFormattingClientCapabilities Capabilities specific to the `textDocument/onTypeFormatting` request.
---@field public rename? linkedit.kit.LSP.RenameClientCapabilities Capabilities specific to the `textDocument/rename` request.
---@field public foldingRange? linkedit.kit.LSP.FoldingRangeClientCapabilities Capabilities specific to the `textDocument/foldingRange` request.<br><br>@since 3.10.0
---@field public selectionRange? linkedit.kit.LSP.SelectionRangeClientCapabilities Capabilities specific to the `textDocument/selectionRange` request.<br><br>@since 3.15.0
---@field public publishDiagnostics? linkedit.kit.LSP.PublishDiagnosticsClientCapabilities Capabilities specific to the `textDocument/publishDiagnostics` notification.
---@field public callHierarchy? linkedit.kit.LSP.CallHierarchyClientCapabilities Capabilities specific to the various call hierarchy requests.<br><br>@since 3.16.0
---@field public semanticTokens? linkedit.kit.LSP.SemanticTokensClientCapabilities Capabilities specific to the various semantic token request.<br><br>@since 3.16.0
---@field public linkedEditingRange? linkedit.kit.LSP.LinkedEditingRangeClientCapabilities Capabilities specific to the `textDocument/linkedEditingRange` request.<br><br>@since 3.16.0
---@field public moniker? linkedit.kit.LSP.MonikerClientCapabilities Client capabilities specific to the `textDocument/moniker` request.<br><br>@since 3.16.0
---@field public typeHierarchy? linkedit.kit.LSP.TypeHierarchyClientCapabilities Capabilities specific to the various type hierarchy requests.<br><br>@since 3.17.0
---@field public inlineValue? linkedit.kit.LSP.InlineValueClientCapabilities Capabilities specific to the `textDocument/inlineValue` request.<br><br>@since 3.17.0
---@field public inlayHint? linkedit.kit.LSP.InlayHintClientCapabilities Capabilities specific to the `textDocument/inlayHint` request.<br><br>@since 3.17.0
---@field public diagnostic? linkedit.kit.LSP.DiagnosticClientCapabilities Capabilities specific to the diagnostic pull model.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.NotebookDocumentClientCapabilities
---@field public synchronization linkedit.kit.LSP.NotebookDocumentSyncClientCapabilities Capabilities specific to notebook document synchronization<br><br>@since 3.17.0

---@class linkedit.kit.LSP.WindowClientCapabilities
---@field public workDoneProgress? boolean It indicates whether the client supports server initiated<br>progress using the `window/workDoneProgress/create` request.<br><br>The capability also controls Whether client supports handling<br>of progress notifications. If set servers are allowed to report a<br>`workDoneProgress` property in the request specific server<br>capabilities.<br><br>@since 3.15.0
---@field public showMessage? linkedit.kit.LSP.ShowMessageRequestClientCapabilities Capabilities specific to the showMessage request.<br><br>@since 3.16.0
---@field public showDocument? linkedit.kit.LSP.ShowDocumentClientCapabilities Capabilities specific to the showDocument request.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.GeneralClientCapabilities
---@field public staleRequestSupport? linkedit.kit.LSP.GeneralClientCapabilities.staleRequestSupport Client capability that signals how the client<br>handles stale requests (e.g. a request<br>for which the client will not process the response<br>anymore since the information is outdated).<br><br>@since 3.17.0
---@field public regularExpressions? linkedit.kit.LSP.RegularExpressionsClientCapabilities Client capabilities specific to regular expressions.<br><br>@since 3.16.0
---@field public markdown? linkedit.kit.LSP.MarkdownClientCapabilities Client capabilities specific to the client's markdown parser.<br><br>@since 3.16.0
---@field public positionEncodings? linkedit.kit.LSP.PositionEncodingKind[] The position encodings supported by the client. Client and server<br>have to agree on the same position encoding to ensure that offsets<br>(e.g. character position in a line) are interpreted the same on both<br>sides.<br><br>To keep the protocol backwards compatible the following applies: if<br>the value 'utf-16' is missing from the array of position encodings<br>servers can assume that the client supports UTF-16. UTF-16 is<br>therefore a mandatory encoding.<br><br>If omitted it defaults to ['utf-16'].<br><br>Implementation considerations: since the conversion from one encoding<br>into another requires the content of the file / line the conversion<br>is best done where the file is read which is usually on the server<br>side.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.GeneralClientCapabilities.staleRequestSupport
---@field public cancel boolean The client will actively cancel the request.
---@field public retryOnContentModified string[] The list of requests for which the client<br>will retry the request if it receives a<br>response with error code `ContentModified`

---@class linkedit.kit.LSP.RelativePattern
---@field public baseUri (linkedit.kit.LSP.WorkspaceFolder | string) A workspace folder or a base URI to which this pattern will be matched<br>against relatively.
---@field public pattern linkedit.kit.LSP.Pattern The actual glob pattern;

---@class linkedit.kit.LSP.WorkspaceEditClientCapabilities
---@field public documentChanges? boolean The client supports versioned document changes in `WorkspaceEdit`s
---@field public resourceOperations? linkedit.kit.LSP.ResourceOperationKind[] The resource operations the client supports. Clients should at least<br>support 'create', 'rename' and 'delete' files and folders.<br><br>@since 3.13.0
---@field public failureHandling? linkedit.kit.LSP.FailureHandlingKind The failure handling strategy of a client if applying the workspace edit<br>fails.<br><br>@since 3.13.0
---@field public normalizesLineEndings? boolean Whether the client normalizes line endings to the client specific<br>setting.<br>If set to `true` the client will normalize line ending characters<br>in a workspace edit to the client-specified new line<br>character.<br><br>@since 3.16.0
---@field public changeAnnotationSupport? linkedit.kit.LSP.WorkspaceEditClientCapabilities.changeAnnotationSupport Whether the client in general supports change annotations on text edits,<br>create file, rename file and delete file changes.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.WorkspaceEditClientCapabilities.changeAnnotationSupport
---@field public groupsOnLabel? boolean Whether the client groups edits with equal labels into tree nodes,<br>for instance all edits labelled with "Changes in Strings" would<br>be a tree node.

---@class linkedit.kit.LSP.DidChangeConfigurationClientCapabilities
---@field public dynamicRegistration? boolean Did change configuration notification supports dynamic registration.

---@class linkedit.kit.LSP.DidChangeWatchedFilesClientCapabilities
---@field public dynamicRegistration? boolean Did change watched files notification supports dynamic registration. Please note<br>that the current protocol doesn't support static configuration for file changes<br>from the server side.
---@field public relativePatternSupport? boolean Whether the client has support for {@link  RelativePattern relative pattern}<br>or not.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.WorkspaceSymbolClientCapabilities
---@field public dynamicRegistration? boolean Symbol request supports dynamic registration.
---@field public symbolKind? linkedit.kit.LSP.WorkspaceSymbolClientCapabilities.symbolKind Specific capabilities for the `SymbolKind` in the `workspace/symbol` request.
---@field public tagSupport? linkedit.kit.LSP.WorkspaceSymbolClientCapabilities.tagSupport The client supports tags on `SymbolInformation`.<br>Clients supporting tags have to handle unknown tags gracefully.<br><br>@since 3.16.0
---@field public resolveSupport? linkedit.kit.LSP.WorkspaceSymbolClientCapabilities.resolveSupport The client support partial workspace symbols. The client will send the<br>request `workspaceSymbol/resolve` to the server to resolve additional<br>properties.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.WorkspaceSymbolClientCapabilities.symbolKind
---@field public valueSet? linkedit.kit.LSP.SymbolKind[] The symbol kind values the client supports. When this<br>property exists the client also guarantees that it will<br>handle values outside its set gracefully and falls back<br>to a default value when unknown.<br><br>If this property is not present the client only supports<br>the symbol kinds from `File` to `Array` as defined in<br>the initial version of the protocol.

---@class linkedit.kit.LSP.WorkspaceSymbolClientCapabilities.tagSupport
---@field public valueSet linkedit.kit.LSP.SymbolTag[] The tags supported by the client.

---@class linkedit.kit.LSP.WorkspaceSymbolClientCapabilities.resolveSupport
---@field public properties string[] The properties that a client can resolve lazily. Usually<br>`location.range`

---@class linkedit.kit.LSP.ExecuteCommandClientCapabilities
---@field public dynamicRegistration? boolean Execute command supports dynamic registration.

---@class linkedit.kit.LSP.SemanticTokensWorkspaceClientCapabilities
---@field public refreshSupport? boolean Whether the client implementation supports a refresh request sent from<br>the server to the client.<br><br>Note that this event is global and will force the client to refresh all<br>semantic tokens currently shown. It should be used with absolute care<br>and is useful for situation where a server for example detects a project<br>wide change that requires such a calculation.

---@class linkedit.kit.LSP.CodeLensWorkspaceClientCapabilities
---@field public refreshSupport? boolean Whether the client implementation supports a refresh request sent from the<br>server to the client.<br><br>Note that this event is global and will force the client to refresh all<br>code lenses currently shown. It should be used with absolute care and is<br>useful for situation where a server for example detect a project wide<br>change that requires such a calculation.

---@class linkedit.kit.LSP.FileOperationClientCapabilities
---@field public dynamicRegistration? boolean Whether the client supports dynamic registration for file requests/notifications.
---@field public didCreate? boolean The client has support for sending didCreateFiles notifications.
---@field public willCreate? boolean The client has support for sending willCreateFiles requests.
---@field public didRename? boolean The client has support for sending didRenameFiles notifications.
---@field public willRename? boolean The client has support for sending willRenameFiles requests.
---@field public didDelete? boolean The client has support for sending didDeleteFiles notifications.
---@field public willDelete? boolean The client has support for sending willDeleteFiles requests.

---@class linkedit.kit.LSP.InlineValueWorkspaceClientCapabilities
---@field public refreshSupport? boolean Whether the client implementation supports a refresh request sent from the<br>server to the client.<br><br>Note that this event is global and will force the client to refresh all<br>inline values currently shown. It should be used with absolute care and is<br>useful for situation where a server for example detects a project wide<br>change that requires such a calculation.

---@class linkedit.kit.LSP.InlayHintWorkspaceClientCapabilities
---@field public refreshSupport? boolean Whether the client implementation supports a refresh request sent from<br>the server to the client.<br><br>Note that this event is global and will force the client to refresh all<br>inlay hints currently shown. It should be used with absolute care and<br>is useful for situation where a server for example detects a project wide<br>change that requires such a calculation.

---@class linkedit.kit.LSP.DiagnosticWorkspaceClientCapabilities
---@field public refreshSupport? boolean Whether the client implementation supports a refresh request sent from<br>the server to the client.<br><br>Note that this event is global and will force the client to refresh all<br>pulled diagnostics currently shown. It should be used with absolute care and<br>is useful for situation where a server for example detects a project wide<br>change that requires such a calculation.

---@class linkedit.kit.LSP.TextDocumentSyncClientCapabilities
---@field public dynamicRegistration? boolean Whether text document synchronization supports dynamic registration.
---@field public willSave? boolean The client supports sending will save notifications.
---@field public willSaveWaitUntil? boolean The client supports sending a will save request and<br>waits for a response providing text edits which will<br>be applied to the document before it is saved.
---@field public didSave? boolean The client supports did save notifications.

---@class linkedit.kit.LSP.CompletionClientCapabilities
---@field public dynamicRegistration? boolean Whether completion supports dynamic registration.
---@field public completionItem? linkedit.kit.LSP.CompletionClientCapabilities.completionItem The client supports the following `CompletionItem` specific<br>capabilities.
---@field public completionItemKind? linkedit.kit.LSP.CompletionClientCapabilities.completionItemKind
---@field public insertTextMode? linkedit.kit.LSP.InsertTextMode Defines how the client handles whitespace and indentation<br>when accepting a completion item that uses multi line<br>text in either `insertText` or `textEdit`.<br><br>@since 3.17.0
---@field public contextSupport? boolean The client supports to send additional context information for a<br>`textDocument/completion` request.
---@field public completionList? linkedit.kit.LSP.CompletionClientCapabilities.completionList The client supports the following `CompletionList` specific<br>capabilities.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.CompletionClientCapabilities.completionItem
---@field public snippetSupport? boolean Client supports snippets as insert text.<br><br>A snippet can define tab stops and placeholders with `$1`, `$2`<br>and `${3:foo}`. `$0` defines the final tab stop, it defaults to<br>the end of the snippet. Placeholders with equal identifiers are linked,<br>that is typing in one will update others too.
---@field public commitCharactersSupport? boolean Client supports commit characters on a completion item.
---@field public documentationFormat? linkedit.kit.LSP.MarkupKind[] Client supports the following content formats for the documentation<br>property. The order describes the preferred format of the client.
---@field public deprecatedSupport? boolean Client supports the deprecated property on a completion item.
---@field public preselectSupport? boolean Client supports the preselect property on a completion item.
---@field public tagSupport? linkedit.kit.LSP.CompletionClientCapabilities.completionItem.tagSupport Client supports the tag property on a completion item. Clients supporting<br>tags have to handle unknown tags gracefully. Clients especially need to<br>preserve unknown tags when sending a completion item back to the server in<br>a resolve call.<br><br>@since 3.15.0
---@field public insertReplaceSupport? boolean Client support insert replace edit to control different behavior if a<br>completion item is inserted in the text or should replace text.<br><br>@since 3.16.0
---@field public resolveSupport? linkedit.kit.LSP.CompletionClientCapabilities.completionItem.resolveSupport Indicates which properties a client can resolve lazily on a completion<br>item. Before version 3.16.0 only the predefined properties `documentation`<br>and `details` could be resolved lazily.<br><br>@since 3.16.0
---@field public insertTextModeSupport? linkedit.kit.LSP.CompletionClientCapabilities.completionItem.insertTextModeSupport The client supports the `insertTextMode` property on<br>a completion item to override the whitespace handling mode<br>as defined by the client (see `insertTextMode`).<br><br>@since 3.16.0
---@field public labelDetailsSupport? boolean The client has support for completion item label<br>details (see also `CompletionItemLabelDetails`).<br><br>@since 3.17.0

---@class linkedit.kit.LSP.CompletionClientCapabilities.completionItem.tagSupport
---@field public valueSet linkedit.kit.LSP.CompletionItemTag[] The tags supported by the client.

---@class linkedit.kit.LSP.CompletionClientCapabilities.completionItem.resolveSupport
---@field public properties string[] The properties that a client can resolve lazily.

---@class linkedit.kit.LSP.CompletionClientCapabilities.completionItem.insertTextModeSupport
---@field public valueSet linkedit.kit.LSP.InsertTextMode[]

---@class linkedit.kit.LSP.CompletionClientCapabilities.completionItemKind
---@field public valueSet? linkedit.kit.LSP.CompletionItemKind[] The completion item kind values the client supports. When this<br>property exists the client also guarantees that it will<br>handle values outside its set gracefully and falls back<br>to a default value when unknown.<br><br>If this property is not present the client only supports<br>the completion items kinds from `Text` to `Reference` as defined in<br>the initial version of the protocol.

---@class linkedit.kit.LSP.CompletionClientCapabilities.completionList
---@field public itemDefaults? string[] The client supports the following itemDefaults on<br>a completion list.<br><br>The value lists the supported property names of the<br>`CompletionList.itemDefaults` object. If omitted<br>no properties are supported.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.HoverClientCapabilities
---@field public dynamicRegistration? boolean Whether hover supports dynamic registration.
---@field public contentFormat? linkedit.kit.LSP.MarkupKind[] Client supports the following content formats for the content<br>property. The order describes the preferred format of the client.

---@class linkedit.kit.LSP.SignatureHelpClientCapabilities
---@field public dynamicRegistration? boolean Whether signature help supports dynamic registration.
---@field public signatureInformation? linkedit.kit.LSP.SignatureHelpClientCapabilities.signatureInformation The client supports the following `SignatureInformation`<br>specific properties.
---@field public contextSupport? boolean The client supports to send additional context information for a<br>`textDocument/signatureHelp` request. A client that opts into<br>contextSupport will also support the `retriggerCharacters` on<br>`SignatureHelpOptions`.<br><br>@since 3.15.0

---@class linkedit.kit.LSP.SignatureHelpClientCapabilities.signatureInformation
---@field public documentationFormat? linkedit.kit.LSP.MarkupKind[] Client supports the following content formats for the documentation<br>property. The order describes the preferred format of the client.
---@field public parameterInformation? linkedit.kit.LSP.SignatureHelpClientCapabilities.signatureInformation.parameterInformation Client capabilities specific to parameter information.
---@field public activeParameterSupport? boolean The client supports the `activeParameter` property on `SignatureInformation`<br>literal.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.SignatureHelpClientCapabilities.signatureInformation.parameterInformation
---@field public labelOffsetSupport? boolean The client supports processing label offsets instead of a<br>simple label string.<br><br>@since 3.14.0

---@class linkedit.kit.LSP.DeclarationClientCapabilities
---@field public dynamicRegistration? boolean Whether declaration supports dynamic registration. If this is set to `true`<br>the client supports the new `DeclarationRegistrationOptions` return value<br>for the corresponding server capability as well.
---@field public linkSupport? boolean The client supports additional metadata in the form of declaration links.

---@class linkedit.kit.LSP.DefinitionClientCapabilities
---@field public dynamicRegistration? boolean Whether definition supports dynamic registration.
---@field public linkSupport? boolean The client supports additional metadata in the form of definition links.<br><br>@since 3.14.0

---@class linkedit.kit.LSP.TypeDefinitionClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration. If this is set to `true`<br>the client supports the new `TypeDefinitionRegistrationOptions` return value<br>for the corresponding server capability as well.
---@field public linkSupport? boolean The client supports additional metadata in the form of definition links.<br><br>Since 3.14.0

---@class linkedit.kit.LSP.ImplementationClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration. If this is set to `true`<br>the client supports the new `ImplementationRegistrationOptions` return value<br>for the corresponding server capability as well.
---@field public linkSupport? boolean The client supports additional metadata in the form of definition links.<br><br>@since 3.14.0

---@class linkedit.kit.LSP.ReferenceClientCapabilities
---@field public dynamicRegistration? boolean Whether references supports dynamic registration.

---@class linkedit.kit.LSP.DocumentHighlightClientCapabilities
---@field public dynamicRegistration? boolean Whether document highlight supports dynamic registration.

---@class linkedit.kit.LSP.DocumentSymbolClientCapabilities
---@field public dynamicRegistration? boolean Whether document symbol supports dynamic registration.
---@field public symbolKind? linkedit.kit.LSP.DocumentSymbolClientCapabilities.symbolKind Specific capabilities for the `SymbolKind` in the<br>`textDocument/documentSymbol` request.
---@field public hierarchicalDocumentSymbolSupport? boolean The client supports hierarchical document symbols.
---@field public tagSupport? linkedit.kit.LSP.DocumentSymbolClientCapabilities.tagSupport The client supports tags on `SymbolInformation`. Tags are supported on<br>`DocumentSymbol` if `hierarchicalDocumentSymbolSupport` is set to true.<br>Clients supporting tags have to handle unknown tags gracefully.<br><br>@since 3.16.0
---@field public labelSupport? boolean The client supports an additional label presented in the UI when<br>registering a document symbol provider.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.DocumentSymbolClientCapabilities.symbolKind
---@field public valueSet? linkedit.kit.LSP.SymbolKind[] The symbol kind values the client supports. When this<br>property exists the client also guarantees that it will<br>handle values outside its set gracefully and falls back<br>to a default value when unknown.<br><br>If this property is not present the client only supports<br>the symbol kinds from `File` to `Array` as defined in<br>the initial version of the protocol.

---@class linkedit.kit.LSP.DocumentSymbolClientCapabilities.tagSupport
---@field public valueSet linkedit.kit.LSP.SymbolTag[] The tags supported by the client.

---@class linkedit.kit.LSP.CodeActionClientCapabilities
---@field public dynamicRegistration? boolean Whether code action supports dynamic registration.
---@field public codeActionLiteralSupport? linkedit.kit.LSP.CodeActionClientCapabilities.codeActionLiteralSupport The client support code action literals of type `CodeAction` as a valid<br>response of the `textDocument/codeAction` request. If the property is not<br>set the request can only return `Command` literals.<br><br>@since 3.8.0
---@field public isPreferredSupport? boolean Whether code action supports the `isPreferred` property.<br><br>@since 3.15.0
---@field public disabledSupport? boolean Whether code action supports the `disabled` property.<br><br>@since 3.16.0
---@field public dataSupport? boolean Whether code action supports the `data` property which is<br>preserved between a `textDocument/codeAction` and a<br>`codeAction/resolve` request.<br><br>@since 3.16.0
---@field public resolveSupport? linkedit.kit.LSP.CodeActionClientCapabilities.resolveSupport Whether the client supports resolving additional code action<br>properties via a separate `codeAction/resolve` request.<br><br>@since 3.16.0
---@field public honorsChangeAnnotations? boolean Whether the client honors the change annotations in<br>text edits and resource operations returned via the<br>`CodeAction#edit` property by for example presenting<br>the workspace edit in the user interface and asking<br>for confirmation.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.CodeActionClientCapabilities.codeActionLiteralSupport
---@field public codeActionKind linkedit.kit.LSP.CodeActionClientCapabilities.codeActionLiteralSupport.codeActionKind The code action kind is support with the following value<br>set.

---@class linkedit.kit.LSP.CodeActionClientCapabilities.codeActionLiteralSupport.codeActionKind
---@field public valueSet linkedit.kit.LSP.CodeActionKind[] The code action kind values the client supports. When this<br>property exists the client also guarantees that it will<br>handle values outside its set gracefully and falls back<br>to a default value when unknown.

---@class linkedit.kit.LSP.CodeActionClientCapabilities.resolveSupport
---@field public properties string[] The properties that a client can resolve lazily.

---@class linkedit.kit.LSP.CodeLensClientCapabilities
---@field public dynamicRegistration? boolean Whether code lens supports dynamic registration.

---@class linkedit.kit.LSP.DocumentLinkClientCapabilities
---@field public dynamicRegistration? boolean Whether document link supports dynamic registration.
---@field public tooltipSupport? boolean Whether the client supports the `tooltip` property on `DocumentLink`.<br><br>@since 3.15.0

---@class linkedit.kit.LSP.DocumentColorClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration. If this is set to `true`<br>the client supports the new `DocumentColorRegistrationOptions` return value<br>for the corresponding server capability as well.

---@class linkedit.kit.LSP.DocumentFormattingClientCapabilities
---@field public dynamicRegistration? boolean Whether formatting supports dynamic registration.

---@class linkedit.kit.LSP.DocumentRangeFormattingClientCapabilities
---@field public dynamicRegistration? boolean Whether range formatting supports dynamic registration.

---@class linkedit.kit.LSP.DocumentOnTypeFormattingClientCapabilities
---@field public dynamicRegistration? boolean Whether on type formatting supports dynamic registration.

---@class linkedit.kit.LSP.RenameClientCapabilities
---@field public dynamicRegistration? boolean Whether rename supports dynamic registration.
---@field public prepareSupport? boolean Client supports testing for validity of rename operations<br>before execution.<br><br>@since 3.12.0
---@field public prepareSupportDefaultBehavior? linkedit.kit.LSP.PrepareSupportDefaultBehavior Client supports the default behavior result.<br><br>The value indicates the default behavior used by the<br>client.<br><br>@since 3.16.0
---@field public honorsChangeAnnotations? boolean Whether the client honors the change annotations in<br>text edits and resource operations returned via the<br>rename request's workspace edit by for example presenting<br>the workspace edit in the user interface and asking<br>for confirmation.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.FoldingRangeClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration for folding range<br>providers. If this is set to `true` the client supports the new<br>`FoldingRangeRegistrationOptions` return value for the corresponding<br>server capability as well.
---@field public rangeLimit? integer The maximum number of folding ranges that the client prefers to receive<br>per document. The value serves as a hint, servers are free to follow the<br>limit.
---@field public lineFoldingOnly? boolean If set, the client signals that it only supports folding complete lines.<br>If set, client will ignore specified `startCharacter` and `endCharacter`<br>properties in a FoldingRange.
---@field public foldingRangeKind? linkedit.kit.LSP.FoldingRangeClientCapabilities.foldingRangeKind Specific options for the folding range kind.<br><br>@since 3.17.0
---@field public foldingRange? linkedit.kit.LSP.FoldingRangeClientCapabilities.foldingRange Specific options for the folding range.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.FoldingRangeClientCapabilities.foldingRangeKind
---@field public valueSet? linkedit.kit.LSP.FoldingRangeKind[] The folding range kind values the client supports. When this<br>property exists the client also guarantees that it will<br>handle values outside its set gracefully and falls back<br>to a default value when unknown.

---@class linkedit.kit.LSP.FoldingRangeClientCapabilities.foldingRange
---@field public collapsedText? boolean If set, the client signals that it supports setting collapsedText on<br>folding ranges to display custom labels instead of the default text.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.SelectionRangeClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration for selection range providers. If this is set to `true`<br>the client supports the new `SelectionRangeRegistrationOptions` return value for the corresponding server<br>capability as well.

---@class linkedit.kit.LSP.PublishDiagnosticsClientCapabilities
---@field public relatedInformation? boolean Whether the clients accepts diagnostics with related information.
---@field public tagSupport? linkedit.kit.LSP.PublishDiagnosticsClientCapabilities.tagSupport Client supports the tag property to provide meta data about a diagnostic.<br>Clients supporting tags have to handle unknown tags gracefully.<br><br>@since 3.15.0
---@field public versionSupport? boolean Whether the client interprets the version property of the<br>`textDocument/publishDiagnostics` notification's parameter.<br><br>@since 3.15.0
---@field public codeDescriptionSupport? boolean Client supports a codeDescription property<br><br>@since 3.16.0
---@field public dataSupport? boolean Whether code action supports the `data` property which is<br>preserved between a `textDocument/publishDiagnostics` and<br>`textDocument/codeAction` request.<br><br>@since 3.16.0

---@class linkedit.kit.LSP.PublishDiagnosticsClientCapabilities.tagSupport
---@field public valueSet linkedit.kit.LSP.DiagnosticTag[] The tags supported by the client.

---@class linkedit.kit.LSP.CallHierarchyClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration. If this is set to `true`<br>the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`<br>return value for the corresponding server capability as well.

---@class linkedit.kit.LSP.SemanticTokensClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration. If this is set to `true`<br>the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`<br>return value for the corresponding server capability as well.
---@field public requests linkedit.kit.LSP.SemanticTokensClientCapabilities.requests Which requests the client supports and might send to the server<br>depending on the server's capability. Please note that clients might not<br>show semantic tokens or degrade some of the user experience if a range<br>or full request is advertised by the client but not provided by the<br>server. If for example the client capability `requests.full` and<br>`request.range` are both set to true but the server only provides a<br>range provider the client might not render a minimap correctly or might<br>even decide to not show any semantic tokens at all.
---@field public tokenTypes string[] The token types that the client supports.
---@field public tokenModifiers string[] The token modifiers that the client supports.
---@field public formats linkedit.kit.LSP.TokenFormat[] The token formats the clients supports.
---@field public overlappingTokenSupport? boolean Whether the client supports tokens that can overlap each other.
---@field public multilineTokenSupport? boolean Whether the client supports tokens that can span multiple lines.
---@field public serverCancelSupport? boolean Whether the client allows the server to actively cancel a<br>semantic token request, e.g. supports returning<br>LSPErrorCodes.ServerCancelled. If a server does the client<br>needs to retrigger the request.<br><br>@since 3.17.0
---@field public augmentsSyntaxTokens? boolean Whether the client uses semantic tokens to augment existing<br>syntax tokens. If set to `true` client side created syntax<br>tokens and semantic tokens are both used for colorization. If<br>set to `false` the client only uses the returned semantic tokens<br>for colorization.<br><br>If the value is `undefined` then the client behavior is not<br>specified.<br><br>@since 3.17.0

---@class linkedit.kit.LSP.SemanticTokensClientCapabilities.requests
---@field public range? (boolean | {  }) The client will send the `textDocument/semanticTokens/range` request if<br>the server provides a corresponding handler.
---@field public full? (boolean | { delta?: boolean }) The client will send the `textDocument/semanticTokens/full` request if<br>the server provides a corresponding handler.

---@class linkedit.kit.LSP.LinkedEditingRangeClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration. If this is set to `true`<br>the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`<br>return value for the corresponding server capability as well.

---@class linkedit.kit.LSP.MonikerClientCapabilities
---@field public dynamicRegistration? boolean Whether moniker supports dynamic registration. If this is set to `true`<br>the client supports the new `MonikerRegistrationOptions` return value<br>for the corresponding server capability as well.

---@class linkedit.kit.LSP.TypeHierarchyClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration. If this is set to `true`<br>the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`<br>return value for the corresponding server capability as well.

---@class linkedit.kit.LSP.InlineValueClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration for inline value providers.

---@class linkedit.kit.LSP.InlayHintClientCapabilities
---@field public dynamicRegistration? boolean Whether inlay hints support dynamic registration.
---@field public resolveSupport? linkedit.kit.LSP.InlayHintClientCapabilities.resolveSupport Indicates which properties a client can resolve lazily on an inlay<br>hint.

---@class linkedit.kit.LSP.InlayHintClientCapabilities.resolveSupport
---@field public properties string[] The properties that a client can resolve lazily.

---@class linkedit.kit.LSP.DiagnosticClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration. If this is set to `true`<br>the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`<br>return value for the corresponding server capability as well.
---@field public relatedDocumentSupport? boolean Whether the clients supports related documents for document diagnostic pulls.

---@class linkedit.kit.LSP.NotebookDocumentSyncClientCapabilities
---@field public dynamicRegistration? boolean Whether implementation supports dynamic registration. If this is<br>set to `true` the client supports the new<br>`(TextDocumentRegistrationOptions & StaticRegistrationOptions)`<br>return value for the corresponding server capability as well.
---@field public executionSummarySupport? boolean The client supports sending execution summary data per cell.

---@class linkedit.kit.LSP.ShowMessageRequestClientCapabilities
---@field public messageActionItem? linkedit.kit.LSP.ShowMessageRequestClientCapabilities.messageActionItem Capabilities specific to the `MessageActionItem` type.

---@class linkedit.kit.LSP.ShowMessageRequestClientCapabilities.messageActionItem
---@field public additionalPropertiesSupport? boolean Whether the client supports additional attributes which<br>are preserved and send back to the server in the<br>request's response.

---@class linkedit.kit.LSP.ShowDocumentClientCapabilities
---@field public support boolean The client has support for the showDocument<br>request.

---@class linkedit.kit.LSP.RegularExpressionsClientCapabilities
---@field public engine string The engine's name.
---@field public version? string The engine's version.

---@class linkedit.kit.LSP.MarkdownClientCapabilities
---@field public parser string The name of the parser.
---@field public version? string The version of the parser.
---@field public allowedTags? string[] A list of HTML tags that the client allows / supports in<br>Markdown.<br><br>@since 3.17.0

---@alias linkedit.kit.LSP.TextDocumentImplementationResponse (linkedit.kit.LSP.Definition | linkedit.kit.LSP.DefinitionLink[] | nil)

---@alias linkedit.kit.LSP.TextDocumentTypeDefinitionResponse (linkedit.kit.LSP.Definition | linkedit.kit.LSP.DefinitionLink[] | nil)

---@alias linkedit.kit.LSP.WorkspaceWorkspaceFoldersResponse (linkedit.kit.LSP.WorkspaceFolder[] | nil)

---@alias linkedit.kit.LSP.WorkspaceConfigurationResponse linkedit.kit.LSP.LSPAny[]

---@alias linkedit.kit.LSP.TextDocumentDocumentColorResponse linkedit.kit.LSP.ColorInformation[]

---@alias linkedit.kit.LSP.TextDocumentColorPresentationResponse linkedit.kit.LSP.ColorPresentation[]

---@alias linkedit.kit.LSP.TextDocumentFoldingRangeResponse (linkedit.kit.LSP.FoldingRange[] | nil)

---@alias linkedit.kit.LSP.TextDocumentDeclarationResponse (linkedit.kit.LSP.Declaration | linkedit.kit.LSP.DeclarationLink[] | nil)

---@alias linkedit.kit.LSP.TextDocumentSelectionRangeResponse (linkedit.kit.LSP.SelectionRange[] | nil)

---@alias linkedit.kit.LSP.WindowWorkDoneProgressCreateResponse nil

---@alias linkedit.kit.LSP.TextDocumentPrepareCallHierarchyResponse (linkedit.kit.LSP.CallHierarchyItem[] | nil)

---@alias linkedit.kit.LSP.CallHierarchyIncomingCallsResponse (linkedit.kit.LSP.CallHierarchyIncomingCall[] | nil)

---@alias linkedit.kit.LSP.CallHierarchyOutgoingCallsResponse (linkedit.kit.LSP.CallHierarchyOutgoingCall[] | nil)

---@alias linkedit.kit.LSP.TextDocumentSemanticTokensFullResponse (linkedit.kit.LSP.SemanticTokens | nil)

---@alias linkedit.kit.LSP.TextDocumentSemanticTokensFullDeltaResponse (linkedit.kit.LSP.SemanticTokens | linkedit.kit.LSP.SemanticTokensDelta | nil)

---@alias linkedit.kit.LSP.TextDocumentSemanticTokensRangeResponse (linkedit.kit.LSP.SemanticTokens | nil)

---@alias linkedit.kit.LSP.WorkspaceSemanticTokensRefreshResponse nil

---@alias linkedit.kit.LSP.WindowShowDocumentResponse linkedit.kit.LSP.ShowDocumentResult

---@alias linkedit.kit.LSP.TextDocumentLinkedEditingRangeResponse (linkedit.kit.LSP.LinkedEditingRanges | nil)

---@alias linkedit.kit.LSP.WorkspaceWillCreateFilesResponse (linkedit.kit.LSP.WorkspaceEdit | nil)

---@alias linkedit.kit.LSP.WorkspaceWillRenameFilesResponse (linkedit.kit.LSP.WorkspaceEdit | nil)

---@alias linkedit.kit.LSP.WorkspaceWillDeleteFilesResponse (linkedit.kit.LSP.WorkspaceEdit | nil)

---@alias linkedit.kit.LSP.TextDocumentMonikerResponse (linkedit.kit.LSP.Moniker[] | nil)

---@alias linkedit.kit.LSP.TextDocumentPrepareTypeHierarchyResponse (linkedit.kit.LSP.TypeHierarchyItem[] | nil)

---@alias linkedit.kit.LSP.TypeHierarchySupertypesResponse (linkedit.kit.LSP.TypeHierarchyItem[] | nil)

---@alias linkedit.kit.LSP.TypeHierarchySubtypesResponse (linkedit.kit.LSP.TypeHierarchyItem[] | nil)

---@alias linkedit.kit.LSP.TextDocumentInlineValueResponse (linkedit.kit.LSP.InlineValue[] | nil)

---@alias linkedit.kit.LSP.WorkspaceInlineValueRefreshResponse nil

---@alias linkedit.kit.LSP.TextDocumentInlayHintResponse (linkedit.kit.LSP.InlayHint[] | nil)

---@alias linkedit.kit.LSP.InlayHintResolveResponse linkedit.kit.LSP.InlayHint

---@alias linkedit.kit.LSP.WorkspaceInlayHintRefreshResponse nil

---@alias linkedit.kit.LSP.TextDocumentDiagnosticResponse linkedit.kit.LSP.DocumentDiagnosticReport

---@alias linkedit.kit.LSP.WorkspaceDiagnosticResponse linkedit.kit.LSP.WorkspaceDiagnosticReport

---@alias linkedit.kit.LSP.WorkspaceDiagnosticRefreshResponse nil

---@alias linkedit.kit.LSP.ClientRegisterCapabilityResponse nil

---@alias linkedit.kit.LSP.ClientUnregisterCapabilityResponse nil

---@alias linkedit.kit.LSP.InitializeResponse linkedit.kit.LSP.InitializeResult

---@alias linkedit.kit.LSP.ShutdownResponse nil

---@alias linkedit.kit.LSP.WindowShowMessageRequestResponse (linkedit.kit.LSP.MessageActionItem | nil)

---@alias linkedit.kit.LSP.TextDocumentWillSaveWaitUntilResponse (linkedit.kit.LSP.TextEdit[] | nil)

---@alias linkedit.kit.LSP.TextDocumentCompletionResponse (linkedit.kit.LSP.CompletionItem[] | linkedit.kit.LSP.CompletionList | nil)

---@alias linkedit.kit.LSP.CompletionItemResolveResponse linkedit.kit.LSP.CompletionItem

---@alias linkedit.kit.LSP.TextDocumentHoverResponse (linkedit.kit.LSP.Hover | nil)

---@alias linkedit.kit.LSP.TextDocumentSignatureHelpResponse (linkedit.kit.LSP.SignatureHelp | nil)

---@alias linkedit.kit.LSP.TextDocumentDefinitionResponse (linkedit.kit.LSP.Definition | linkedit.kit.LSP.DefinitionLink[] | nil)

---@alias linkedit.kit.LSP.TextDocumentReferencesResponse (linkedit.kit.LSP.Location[] | nil)

---@alias linkedit.kit.LSP.TextDocumentDocumentHighlightResponse (linkedit.kit.LSP.DocumentHighlight[] | nil)

---@alias linkedit.kit.LSP.TextDocumentDocumentSymbolResponse (linkedit.kit.LSP.SymbolInformation[] | linkedit.kit.LSP.DocumentSymbol[] | nil)

---@alias linkedit.kit.LSP.TextDocumentCodeActionResponse ((linkedit.kit.LSP.Command | linkedit.kit.LSP.CodeAction)[] | nil)

---@alias linkedit.kit.LSP.CodeActionResolveResponse linkedit.kit.LSP.CodeAction

---@alias linkedit.kit.LSP.WorkspaceSymbolResponse (linkedit.kit.LSP.SymbolInformation[] | linkedit.kit.LSP.WorkspaceSymbol[] | nil)

---@alias linkedit.kit.LSP.WorkspaceSymbolResolveResponse linkedit.kit.LSP.WorkspaceSymbol

---@alias linkedit.kit.LSP.TextDocumentCodeLensResponse (linkedit.kit.LSP.CodeLens[] | nil)

---@alias linkedit.kit.LSP.CodeLensResolveResponse linkedit.kit.LSP.CodeLens

---@alias linkedit.kit.LSP.WorkspaceCodeLensRefreshResponse nil

---@alias linkedit.kit.LSP.TextDocumentDocumentLinkResponse (linkedit.kit.LSP.DocumentLink[] | nil)

---@alias linkedit.kit.LSP.DocumentLinkResolveResponse linkedit.kit.LSP.DocumentLink

---@alias linkedit.kit.LSP.TextDocumentFormattingResponse (linkedit.kit.LSP.TextEdit[] | nil)

---@alias linkedit.kit.LSP.TextDocumentRangeFormattingResponse (linkedit.kit.LSP.TextEdit[] | nil)

---@alias linkedit.kit.LSP.TextDocumentOnTypeFormattingResponse (linkedit.kit.LSP.TextEdit[] | nil)

---@alias linkedit.kit.LSP.TextDocumentRenameResponse (linkedit.kit.LSP.WorkspaceEdit | nil)

---@alias linkedit.kit.LSP.TextDocumentPrepareRenameResponse (linkedit.kit.LSP.PrepareRenameResult | nil)

---@alias linkedit.kit.LSP.WorkspaceExecuteCommandResponse (linkedit.kit.LSP.LSPAny | nil)

---@alias linkedit.kit.LSP.WorkspaceApplyEditResponse linkedit.kit.LSP.ApplyWorkspaceEditResult

---@alias linkedit.kit.LSP.Definition (linkedit.kit.LSP.Location | linkedit.kit.LSP.Location[])

---@alias linkedit.kit.LSP.DefinitionLink linkedit.kit.LSP.LocationLink

---@alias linkedit.kit.LSP.LSPArray linkedit.kit.LSP.LSPAny[]

---@alias linkedit.kit.LSP.LSPAny (linkedit.kit.LSP.LSPObject | linkedit.kit.LSP.LSPArray | string | integer | integer | integer | boolean | nil)

---@alias linkedit.kit.LSP.Declaration (linkedit.kit.LSP.Location | linkedit.kit.LSP.Location[])

---@alias linkedit.kit.LSP.DeclarationLink linkedit.kit.LSP.LocationLink

---@alias linkedit.kit.LSP.InlineValue (linkedit.kit.LSP.InlineValueText | linkedit.kit.LSP.InlineValueVariableLookup | linkedit.kit.LSP.InlineValueEvaluatableExpression)

---@alias linkedit.kit.LSP.DocumentDiagnosticReport (linkedit.kit.LSP.RelatedFullDocumentDiagnosticReport | linkedit.kit.LSP.RelatedUnchangedDocumentDiagnosticReport)

---@alias linkedit.kit.LSP.PrepareRenameResult (linkedit.kit.LSP.Range | { range: linkedit.kit.LSP.Range, placeholder: string } | { defaultBehavior: boolean })

---@alias linkedit.kit.LSP.ProgressToken (integer | string)

---@alias linkedit.kit.LSP.DocumentSelector linkedit.kit.LSP.DocumentFilter[]

---@alias linkedit.kit.LSP.ChangeAnnotationIdentifier string

---@alias linkedit.kit.LSP.WorkspaceDocumentDiagnosticReport (linkedit.kit.LSP.WorkspaceFullDocumentDiagnosticReport | linkedit.kit.LSP.WorkspaceUnchangedDocumentDiagnosticReport)

---@alias linkedit.kit.LSP.TextDocumentContentChangeEvent ({ range: linkedit.kit.LSP.Range, rangeLength?: integer, text: string } | { text: string })

---@alias linkedit.kit.LSP.MarkedString (string | { language: string, value: string })

---@alias linkedit.kit.LSP.DocumentFilter (linkedit.kit.LSP.TextDocumentFilter | linkedit.kit.LSP.NotebookCellTextDocumentFilter)

---@alias linkedit.kit.LSP.GlobPattern (linkedit.kit.LSP.Pattern | linkedit.kit.LSP.RelativePattern)

---@alias linkedit.kit.LSP.TextDocumentFilter ({ language: string, scheme?: string, pattern?: string } | { language?: string, scheme: string, pattern?: string } | { language?: string, scheme?: string, pattern: string })

---@alias linkedit.kit.LSP.NotebookDocumentFilter ({ notebookType: string, scheme?: string, pattern?: string } | { notebookType?: string, scheme: string, pattern?: string } | { notebookType?: string, scheme?: string, pattern: string })

---@alias linkedit.kit.LSP.Pattern string

return LSP
