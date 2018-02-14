(**************************************************************************)
(*                                                                        *)
(*    Copyright (c) 2014 - 2018.                                          *)
(*    Dynamic Ledger Solutions, Inc. <contact@tezos.com>                  *)
(*                                                                        *)
(*    All rights reserved. No warranty, explicit or implicit, provided.   *)
(*                                                                        *)
(**************************************************************************)

let select_commands _ _ =
  return
    (List.flatten
       [ Client_report_commands.commands () ;
         Client_admin_commands.commands () ;
         Client_network_commands.commands () ;
         Client_generic_rpcs.commands ])

let () = Client_main_run.run select_commands
