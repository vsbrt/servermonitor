.class public Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;
.super Landroid/app/Activity;
.source "ComponentDetailsActivity.java"


# instance fields
.field private txtComponentName:Landroid/widget/TextView;

.field private txtConnectionType:Landroid/widget/TextView;

.field private txtHost:Landroid/widget/TextView;

.field private txtLastUpdated:Landroid/widget/TextView;

.field private txtServerName:Landroid/widget/TextView;

.field private txtStatus:Landroid/widget/TextView;

.field private txtStatusMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "componentID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 36
    .local v1, "componentID":I
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtServerName:Landroid/widget/TextView;

    .line 37
    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtComponentName:Landroid/widget/TextView;

    .line 38
    const v4, 0x7f070007

    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtHost:Landroid/widget/TextView;

    .line 39
    const v4, 0x7f070012

    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtConnectionType:Landroid/widget/TextView;

    .line 40
    const v4, 0x7f070013

    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtStatus:Landroid/widget/TextView;

    .line 41
    const v4, 0x7f070015

    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtStatusMessage:Landroid/widget/TextView;

    .line 42
    const v4, 0x7f070014

    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtLastUpdated:Landroid/widget/TextView;

    .line 44
    new-instance v2, Lcom/odinnet/servermonitor/data/Database;

    invoke-direct {v2, p0}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 45
    .local v2, "db":Lcom/odinnet/servermonitor/data/Database;
    invoke-virtual {v2, v1}, Lcom/odinnet/servermonitor/data/Database;->getServerComponent(I)Lcom/odinnet/servermonitor/data/ServerComponent;

    move-result-object v0

    .line 46
    .local v0, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getServerID()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/odinnet/servermonitor/data/Database;->getServer(I)Lcom/odinnet/servermonitor/data/Server;

    move-result-object v3

    .line 48
    .local v3, "server":Lcom/odinnet/servermonitor/data/Server;
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtServerName:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/data/Server;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtComponentName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtHost:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/data/Server;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getConnectionType()Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    if-ne v4, v5, :cond_0

    .line 52
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtConnectionType:Landroid/widget/TextView;

    const v5, 0x7f050019

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 57
    :goto_0
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v4, v5, :cond_1

    .line 58
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtStatus:Landroid/widget/TextView;

    const v5, 0x7f05003c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtStatus:Landroid/widget/TextView;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    :goto_1
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtStatusMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtLastUpdated:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getLastUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getLastUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void

    .line 54
    :cond_0
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtConnectionType:Landroid/widget/TextView;

    const v5, 0x7f05001a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtStatus:Landroid/widget/TextView;

    const v5, 0x7f05003d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->txtStatus:Landroid/widget/TextView;

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;->finish()V

    .line 76
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
