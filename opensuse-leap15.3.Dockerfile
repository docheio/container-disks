# ********************************************************************************************************************** #
#                                                                                                                        #
#                                                       :::    :::     :::     :::     :::   ::: ::::::::::: ::::::::::  #
#    opensuse-leap15.3.Dockerfile                      :+:   :+:    :+: :+:   :+:     :+:   :+:     :+:     :+:          #
#                                                     +:+  +:+    +:+   +:+  +:+      +:+ +:+      +:+     +:+           #
#    By: codespace <codespace@kalyte.ro>             +#++:++    +#++:++#++: +#+       +#++:       +#+     +#++:++#       #
#                                                   +#+  +#+   +#+     +#+ +#+        +#+        +#+     +#+             #
#    Created: 2023/12/17 16:35:12 by codespace     #+#   #+#  #+#     #+# #+#        #+#        #+#     #+#              #
#    Updated: 2023/12/17 16:35:16 by codespace    ###    ### ###     ### ########## ###        ###     ##########.ro     #
#                                                                                                                        #
# ********************************************************************************************************************** #

FROM scratch
ADD https://ftp.gwdg.de/pub/opensuse/repositories/Cloud:/Images:/Leap_15.3/images/openSUSE-Leap-15.3.x86_64-NoCloud.qcow2 /disk/
