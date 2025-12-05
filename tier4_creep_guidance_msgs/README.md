# tier4_creep_guidance_msgs

## Overview

The `tier4_creep_guidance_msgs` package includes message/service definition files for creep guidance system.

## Description

### Topic

- `tier4_creep_guidance_msgs/Command`

  - Members
    - `type` : Type of command
  - Constants
    - `DEACTIVATE` : Deactivate command
    - `ACTIVATE` : Activate command

- `tier4_creep_guidance_msgs/State`

  - Members
    - `type` : Type of state
  - Constants
    - `DEACTIVATED` : Deactivated state
    - `ACTIVATED` : Activated state

- `tier4_creep_guidance_msgs/Module`

  - Members
    - `type` : Type of module
  - Constants
    - `NONE` : No module
    - `CROSSWALK` : Crosswalk module
    - `INTERSECTION` : Intersection module
    - `INTERSECTION_OCCLUSION` : Intersection occlusion module

- `tier4_creep_guidance_msgs/CreepTriggerCommand`

  - Members
    - `id` : Index of requesting target
    - `module` : Module type of requesting target
    - `command` : Command

- `tier4_creep_guidance_msgs/CreepTriggerResponse`

  - Members
    - `id` : Index of requesting target
    - `module` : Module type of requesting target
    - `success` : Creep trigger command result

- `tier4_creep_guidance_msgs/CreepStatus`

  - Members
    - `id` : Index of requesting target
    - `module` : Module type of requesting target
    - `state` : State of creep trigger

### Service

- `tier4_creep_guidance_msgs/CreepTriggerCommand`
  - Members (Request)
    - `stamp` : Time stamp
    - `commands` : Array of creep trigger command
  - Members (Response)
    - `responses` : Array of creep trigger response
