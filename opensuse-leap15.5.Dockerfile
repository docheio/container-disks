# ********************************************************************************************************************** #
#                                                                                                                        #
#                                                       :::    :::     :::     :::     :::   ::: ::::::::::: ::::::::::  #
#    opensuse-leap15.5.Dockerfile                      :+:   :+:    :+: :+:   :+:     :+:   :+:     :+:     :+:          #
#                                                     +:+  +:+    +:+   +:+  +:+      +:+ +:+      +:+     +:+           #
#    By: codespace <codespace@kalyte.ro>             +#++:++    +#++:++#++: +#+       +#++:       +#+     +#++:++#       #
#                                                   +#+  +#+   +#+     +#+ +#+        +#+        +#+     +#+             #
#    Created: 2023/12/17 16:35:24 by codespace     #+#   #+#  #+#     #+# #+#        #+#        #+#     #+#              #
#    Updated: 2023/12/17 16:35:25 by codespace    ###    ### ###     ### ########## ###        ###     ##########.ro     #
#                                                                                                                        #
# ********************************************************************************************************************** #

FROM scratch
ADD https://ftp.gwdg.de/pub/opensuse/repositories/Cloud:/Images:/Leap_15.5/images/openSUSE-Leap-15.5.x86_64-NoCloud.qcow2 /disk/
