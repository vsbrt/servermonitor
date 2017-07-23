.class public Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;
.super Landroid/app/Activity;
.source "AddTCPComponentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnAddComponent:Landroid/widget/Button;

.field private serverID:I

.field private txtComponentName:Landroid/widget/EditText;

.field private txtPort:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private validate()Z
    .locals 5

    .prologue
    const-string v4, "\n"

    .line 80
    const/4 v1, 0x1

    .line 81
    .local v1, "valid":Z
    const-string v0, ""

    .line 83
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->txtComponentName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f05002d

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v1, 0x0

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->txtPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050036

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    .line 104
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 105
    const/16 v2, 0x1388

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 107
    :cond_3
    return v1

    .line 94
    :cond_4
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->txtPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->txtPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0xffff

    if-le v2, v3, :cond_2

    .line 95
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050037

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const-string v5, ""

    .line 40
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->btnAddComponent:Landroid/widget/Button;

    if-ne p1, v4, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->validate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    new-instance v2, Lcom/odinnet/servermonitor/data/Database;

    invoke-direct {v2, p0}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 43
    .local v2, "db":Lcom/odinnet/servermonitor/data/Database;
    new-instance v0, Lcom/odinnet/servermonitor/data/ServerComponent;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;-><init>()V

    .line 44
    .local v0, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->txtComponentName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setComponentName(Ljava/lang/String;)V

    .line 45
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setLastUpdate(Ljava/util/Date;)V

    .line 46
    iget v4, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->serverID:I

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setServerID(I)V

    .line 47
    sget-object v4, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 48
    const-string v4, ""

    invoke-virtual {v0, v5}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatusMessage(Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/odinnet/servermonitor/data/ComponentConnection;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;-><init>()V

    .line 51
    .local v1, "connection":Lcom/odinnet/servermonitor/data/ComponentConnection;
    sget-object v4, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setConnectionType(Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;)V

    .line 52
    invoke-virtual {v1, v6}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setLocalPort(I)V

    .line 53
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->txtPort:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setRemotePort(I)V

    .line 54
    const-string v4, ""

    invoke-virtual {v1, v5}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshPassword(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v6}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshPort(I)V

    .line 56
    const-string v4, ""

    invoke-virtual {v1, v5}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshUsername(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setConnection(Lcom/odinnet/servermonitor/data/ComponentConnection;)V

    .line 60
    invoke-virtual {v2, v0}, Lcom/odinnet/servermonitor/data/Database;->addComponent(Lcom/odinnet/servermonitor/data/ServerComponent;)V

    .line 61
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->finish()V

    .line 66
    .end local v0    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    .end local v1    # "connection":Lcom/odinnet/servermonitor/data/ComponentConnection;
    .end local v2    # "db":Lcom/odinnet/servermonitor/data/Database;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "serverID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->serverID:I

    .line 31
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->txtComponentName:Landroid/widget/EditText;

    .line 32
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->txtPort:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->btnAddComponent:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->btnAddComponent:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "serverID"

    iget v2, p0, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->serverID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;->finish()V

    .line 76
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
