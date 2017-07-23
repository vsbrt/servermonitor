.class public Lcom/odinnet/servermonitor/service/MonitorService;
.super Landroid/app/Service;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odinnet/servermonitor/service/MonitorService$LocalBinder;
    }
.end annotation


# static fields
.field private static final SERVER_DOWN:I = 0x2

.field private static final SERVICE_RUNNING:I = 0x1


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private notificationManager:Landroid/app/NotificationManager;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->timer:Ljava/util/Timer;

    .line 66
    new-instance v0, Lcom/odinnet/servermonitor/service/MonitorService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/odinnet/servermonitor/service/MonitorService$LocalBinder;-><init>(Lcom/odinnet/servermonitor/service/MonitorService;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/odinnet/servermonitor/service/MonitorService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/odinnet/servermonitor/service/MonitorService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private startService()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    .line 72
    const-string v0, "serverMonitorSettings"

    invoke-virtual {p0, v0, v4}, Lcom/odinnet/servermonitor/service/MonitorService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 73
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "enableSound"

    invoke-interface {v11, v0, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/odinnet/servermonitor/data/Settings;->ENABLE_SOUND:Z

    .line 74
    const-string v0, "enableVibrate"

    invoke-interface {v11, v0, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/odinnet/servermonitor/data/Settings;->ENABLE_VIBRATE:Z

    .line 75
    const-string v0, "startOnBoot"

    invoke-interface {v11, v0, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/odinnet/servermonitor/data/Settings;->START_ON_BOOT:Z

    .line 76
    const-string v0, "pollFrequency"

    const-string v1, "15"

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "intStr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 78
    .local v8, "interval":J
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v8

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/odinnet/servermonitor/data/Settings;->INTERVAL:J

    .line 80
    const v0, 0x7f050039

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/service/MonitorService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 83
    .local v12, "text":Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/Notification;

    const/high16 v0, 0x7f020000

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v10, v0, v12, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 86
    .local v10, "notification":Landroid/app/Notification;
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 90
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    iget v0, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 91
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/service/MonitorService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v10, p0, v0, v12, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 93
    iget-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/odinnet/servermonitor/service/MonitorService$1;

    invoke-direct {v1, p0}, Lcom/odinnet/servermonitor/service/MonitorService$1;-><init>(Lcom/odinnet/servermonitor/service/MonitorService;)V

    const-wide/16 v2, 0x0

    sget-wide v4, Lcom/odinnet/servermonitor/data/Settings;->INTERVAL:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 141
    iget-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v13, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 142
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/service/MonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->notificationManager:Landroid/app/NotificationManager;

    .line 45
    invoke-direct {p0}, Lcom/odinnet/servermonitor/service/MonitorService;->startService()V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 56
    iget-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    iget-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 58
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method
