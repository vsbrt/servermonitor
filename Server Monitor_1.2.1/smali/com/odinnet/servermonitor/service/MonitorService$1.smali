.class Lcom/odinnet/servermonitor/service/MonitorService$1;
.super Ljava/util/TimerTask;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odinnet/servermonitor/service/MonitorService;->startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odinnet/servermonitor/service/MonitorService;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/service/MonitorService;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/odinnet/servermonitor/service/MonitorService$1;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v14, 0x0

    .line 97
    sput-boolean v11, Lcom/odinnet/servermonitor/data/Shared;->UPDATING:Z

    .line 98
    iget-object v10, p0, Lcom/odinnet/servermonitor/service/MonitorService$1;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    invoke-static {v10}, Lcom/odinnet/servermonitor/ServerUtil;->updateServers(Landroid/content/Context;)V

    .line 99
    new-instance v2, Lcom/odinnet/servermonitor/data/Database;

    iget-object v10, p0, Lcom/odinnet/servermonitor/service/MonitorService$1;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    invoke-direct {v2, v10}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 100
    .local v2, "db":Lcom/odinnet/servermonitor/data/Database;
    invoke-virtual {v2, v11}, Lcom/odinnet/servermonitor/data/Database;->listServers(Z)Ljava/util/ArrayList;

    move-result-object v8

    .line 101
    .local v8, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/Server;>;"
    const/4 v6, 0x1

    .line 102
    .local v6, "online":Z
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 103
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/odinnet/servermonitor/data/Server;

    .line 105
    .local v7, "server":Lcom/odinnet/servermonitor/data/Server;
    invoke-virtual {v7}, Lcom/odinnet/servermonitor/data/Server;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v10

    sget-object v11, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v10, v11, :cond_1

    .line 106
    const/4 v6, 0x0

    .line 102
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v4, 0x0

    .local v4, "index2":I
    :goto_1
    invoke-virtual {v7}, Lcom/odinnet/servermonitor/data/Server;->getComponents()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 109
    invoke-virtual {v7}, Lcom/odinnet/servermonitor/data/Server;->getComponents()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/data/ServerComponent;

    .line 110
    .local v0, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v10

    sget-object v11, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v10, v11, :cond_2

    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-virtual {v7}, Lcom/odinnet/servermonitor/data/Server;->getComponents()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 108
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    .end local v4    # "index2":I
    .end local v7    # "server":Lcom/odinnet/servermonitor/data/Server;
    :cond_3
    if-nez v6, :cond_6

    .line 118
    iget-object v10, p0, Lcom/odinnet/servermonitor/service/MonitorService$1;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    const v11, 0x7f05003b

    invoke-virtual {v10, v11}, Lcom/odinnet/servermonitor/service/MonitorService;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "srvDown":Ljava/lang/String;
    new-instance v5, Landroid/app/Notification;

    const/high16 v10, 0x7f020000

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v5, v10, v9, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 122
    .local v5, "notification2":Landroid/app/Notification;
    iget-object v10, p0, Lcom/odinnet/servermonitor/service/MonitorService$1;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    new-instance v11, Landroid/content/Intent;

    iget-object v12, p0, Lcom/odinnet/servermonitor/service/MonitorService$1;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    const-class v13, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v10, v14, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 126
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iget-object v10, p0, Lcom/odinnet/servermonitor/service/MonitorService$1;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    iget-object v11, p0, Lcom/odinnet/servermonitor/service/MonitorService$1;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    const/high16 v12, 0x7f050000

    invoke-virtual {v11, v12}, Lcom/odinnet/servermonitor/service/MonitorService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v10, v11, v9, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 128
    sget-boolean v10, Lcom/odinnet/servermonitor/data/Settings;->ENABLE_SOUND:Z

    if-eqz v10, :cond_4

    .line 129
    iget v10, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v5, Landroid/app/Notification;->defaults:I

    .line 131
    :cond_4
    sget-boolean v10, Lcom/odinnet/servermonitor/data/Settings;->ENABLE_VIBRATE:Z

    if-eqz v10, :cond_5

    .line 132
    iget v10, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v5, Landroid/app/Notification;->defaults:I

    .line 134
    :cond_5
    iget-object v10, p0, Lcom/odinnet/servermonitor/service/MonitorService$1;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    # getter for: Lcom/odinnet/servermonitor/service/MonitorService;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v10}, Lcom/odinnet/servermonitor/service/MonitorService;->access$000(Lcom/odinnet/servermonitor/service/MonitorService;)Landroid/app/NotificationManager;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 136
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v5    # "notification2":Landroid/app/Notification;
    .end local v9    # "srvDown":Ljava/lang/String;
    :cond_6
    sput-boolean v14, Lcom/odinnet/servermonitor/data/Shared;->UPDATING:Z

    .line 137
    return-void
.end method
