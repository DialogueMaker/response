--!strict

local packages = script.Parent.roblox_packages;
local Dialogue = require(packages.Dialogue);
local DialogueMakerTypes = require(packages.DialogueMakerTypes);

type Dialogue = DialogueMakerTypes.Dialogue;
type DialogueConstructorProperties = DialogueMakerTypes.DialogueConstructorProperties;
type Effect = DialogueMakerTypes.Effect;
type Page = DialogueMakerTypes.Page;
type DialogueConstructorContent = DialogueMakerTypes.DialogueConstructorContent;
type DialogueConstructorChildren = DialogueMakerTypes.DialogueConstructorChildren;

local Response = {}

function Response.new(content: DialogueConstructorContent, properties: DialogueConstructorProperties?, children: DialogueConstructorChildren?)

  return Dialogue.new(content, {
    type = "Response" :: "Response";
    settings = if properties then properties.settings else nil;
    runInitializationAction = if properties then properties.runInitializationAction else nil;
    runCleanupAction = if properties then properties.runCleanupAction else nil;
    runCompletionAction = if properties then properties.runCompletionAction else nil;
    verifyCondition = if properties then properties.verifyCondition else nil;
  }, children);

end;

return Response;