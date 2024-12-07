# ********************************************************************************************************************** #
#                                                                                                                        #
#                                                       :::    :::     :::     :::     :::   ::: ::::::::::: ::::::::::  #
#    opensuse-leap15.6.Dockerfile                      :+:   :+:    :+: :+:   :+:     :+:   :+:     :+:     :+:          #
#                                                     +:+  +:+    +:+   +:+  +:+      +:+ +:+      +:+     +:+           #
#    By: codespace <codespace@kalyte.ro>             +#++:++    +#++:++#++: +#+       +#++:       +#+     +#++:++#       #
#                                                   +#+  +#+   +#+     +#+ +#+        +#+        +#+     +#+             #
#    Created: 2023/12/17 16:35:24 by codespace     #+#   #+#  #+#     #+# #+#        #+#        #+#     #+#              #
#    Updated: 2024/12/7  19:06:00 by codespace    ###    ### ###     ### ########## ###        ###     ##########.ro     #
#                                                                                                                        #
# ********************************************************************************************************************** #

FROM scratch
ADD https://ftp.gwdg.de/pub/opensuse/repositories/Cloud:/Images:/Leap_15.6/images/openSUSE-Leap-15.6.x86_64-NoCloud.qcow2 /disk/