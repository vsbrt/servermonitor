.class public Lcom/odinnet/servermonitor/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# static fields
.field private static final ABOUT_DIALOG:I = 0x1


# instance fields
.field private componentID:I

.field private serverID:I

.field private serverList:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput v0, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->serverID:I

    .line 45
    iput v0, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->componentID:I

    return-void
.end method

.method static synthetic access$000(Lcom/odinnet/servermonitor/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/odinnet/servermonitor/activity/MainActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->updateServerList()V

    return-void
.end method

.method static synthetic access$100(Lcom/odinnet/servermonitor/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/odinnet/servermonitor/activity/MainActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->componentID:I

    return v0
.end method

.method static synthetic access$200(Lcom/odinnet/servermonitor/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/odinnet/servermonitor/activity/MainActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->serverID:I

    return v0
.end method

.method private updateServerList()V
    .locals 6

    .prologue
    .line 106
    new-instance v1, Lcom/odinnet/servermonitor/data/Database;

    invoke-direct {v1, p0}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, "db":Lcom/odinnet/servermonitor/data/Database;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/data/Database;->listServers(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 108
    .local v3, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/Server;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    const v4, 0x7f050038

    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1388

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/ServerComponent;>;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 113
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/odinnet/servermonitor/data/Server;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/data/Server;->getComponents()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->serverList:Landroid/widget/ExpandableListView;

    new-instance v5, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;

    invoke-direct {v5, p0, v3, v0}, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 116
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 117
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->serverList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_2
    return-void
.end method

.method private updateServers()V
    .locals 4

    .prologue
    .line 80
    const v2, 0x7f050003

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 81
    .local v0, "dia":Landroid/app/Dialog;
    new-instance v1, Lcom/odinnet/servermonitor/activity/MainActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/odinnet/servermonitor/activity/MainActivity$1;-><init>(Lcom/odinnet/servermonitor/activity/MainActivity;Landroid/app/Dialog;)V

    .line 102
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 103
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPos"    # I
    .param p4, "childPos"    # I
    .param p5, "id"    # J

    .prologue
    .line 279
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/ComponentDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "componentID"

    long-to-int v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->finish()V

    .line 283
    const/4 v1, 0x1

    return v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v13, 0x7f05000f

    const v12, 0x7f05000e

    const v11, 0x7f050005

    const v9, 0x1080027

    const/4 v10, 0x1

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 172
    .local v3, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v7, v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    .line 174
    .local v6, "type":I
    if-ne v6, v10, :cond_0

    .line 175
    iget-wide v7, v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    long-to-int v7, v7

    iput v7, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->componentID:I

    .line 181
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 257
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :goto_1
    return v7

    .line 177
    :cond_0
    iget-wide v7, v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    long-to-int v7, v7

    iput v7, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->serverID:I

    goto :goto_0

    .line 183
    :pswitch_1
    new-instance v1, Lcom/odinnet/servermonitor/data/Database;

    invoke-direct {v1, p0}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 184
    .local v1, "db":Lcom/odinnet/servermonitor/data/Database;
    iget v7, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->componentID:I

    invoke-virtual {v1, v7}, Lcom/odinnet/servermonitor/data/Database;->getServerComponent(I)Lcom/odinnet/servermonitor/data/ServerComponent;

    move-result-object v0

    .line 185
    .local v0, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getConnectionType()Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    move-result-object v7

    sget-object v8, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    if-ne v7, v8, :cond_1

    .line 186
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/odinnet/servermonitor/activity/EditTCPComponentActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "componentID"

    iget v8, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->componentID:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->finish()V

    :goto_2
    move v7, v10

    .line 197
    goto :goto_1

    .line 191
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "componentID"

    iget v8, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->componentID:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->finish()V

    goto :goto_2

    .line 199
    .end local v0    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    .end local v1    # "db":Lcom/odinnet/servermonitor/data/Database;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f050009

    invoke-virtual {p0, v8}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f05000a

    invoke-virtual {p0, v8}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/odinnet/servermonitor/activity/MainActivity$2;

    invoke-direct {v9, p0}, Lcom/odinnet/servermonitor/activity/MainActivity$2;-><init>(Lcom/odinnet/servermonitor/activity/MainActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0, v13}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v7, v10

    .line 210
    goto/16 :goto_1

    .line 212
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "serverID"

    iget v8, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->serverID:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->finish()V

    move v7, v10

    .line 216
    goto/16 :goto_1

    .line 218
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/odinnet/servermonitor/activity/EditServerActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "serverID"

    iget v8, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->serverID:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->finish()V

    move v7, v10

    .line 222
    goto/16 :goto_1

    .line 224
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f050007

    invoke-virtual {p0, v8}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f050008

    invoke-virtual {p0, v8}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/odinnet/servermonitor/activity/MainActivity$3;

    invoke-direct {v9, p0}, Lcom/odinnet/servermonitor/activity/MainActivity$3;-><init>(Lcom/odinnet/servermonitor/activity/MainActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0, v13}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v7, v10

    .line 235
    goto/16 :goto_1

    .line 237
    :pswitch_6
    invoke-virtual {p0, v11}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 238
    .local v2, "dia":Landroid/app/Dialog;
    new-instance v5, Lcom/odinnet/servermonitor/activity/MainActivity$4;

    invoke-direct {v5, p0, v2}, Lcom/odinnet/servermonitor/activity/MainActivity$4;-><init>(Lcom/odinnet/servermonitor/activity/MainActivity;Landroid/app/Dialog;)V

    .line 253
    .local v5, "t":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    move v7, v10

    .line 255
    goto/16 :goto_1

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-class v11, Lcom/odinnet/servermonitor/service/MonitorService;

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const-string v5, "serverMonitorSettings"

    invoke-virtual {p0, v5, v10}, Lcom/odinnet/servermonitor/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 52
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "enableSound"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/odinnet/servermonitor/data/Settings;->ENABLE_SOUND:Z

    .line 53
    const-string v5, "enableVibrate"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/odinnet/servermonitor/data/Settings;->ENABLE_VIBRATE:Z

    .line 54
    const-string v5, "startOnBoot"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/odinnet/servermonitor/data/Settings;->START_ON_BOOT:Z

    .line 55
    const-string v5, "pollFrequency"

    const-string v6, "15"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "intStr":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 58
    .local v2, "interval":J
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 62
    :goto_0
    const-wide/16 v5, 0x3c

    mul-long/2addr v5, v2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    sput-wide v5, Lcom/odinnet/servermonitor/data/Settings;->INTERVAL:J

    .line 64
    const v5, 0x7f030009

    invoke-virtual {p0, v5}, Lcom/odinnet/servermonitor/activity/MainActivity;->setContentView(I)V

    .line 65
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "emulator"

    aput-object v6, v5, v10

    const-string v6, "B20791902D62724190DB19C622772D90"

    aput-object v6, v5, v9

    invoke-static {v5}, Lcom/admob/android/ads/AdManager;->setTestDevices([Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "intervalChange"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 68
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/odinnet/servermonitor/service/MonitorService;

    invoke-direct {v5, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/odinnet/servermonitor/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 70
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/odinnet/servermonitor/service/MonitorService;

    invoke-direct {v5, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/odinnet/servermonitor/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    const v5, 0x7f07001a

    invoke-virtual {p0, v5}, Lcom/odinnet/servermonitor/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListView;

    iput-object v5, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->serverList:Landroid/widget/ExpandableListView;

    .line 73
    iget-object v5, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->serverList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 74
    iget-object v5, p0, Lcom/odinnet/servermonitor/activity/MainActivity;->serverList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 76
    invoke-direct {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->updateServerList()V

    .line 77
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-wide/32 v2, 0xdbba0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 156
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 157
    .local v1, "inflater":Landroid/view/MenuInflater;
    move-object v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v2, v0

    .line 159
    .local v2, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v4, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    .line 161
    .local v3, "type":I
    if-nez v3, :cond_0

    .line 162
    const v4, 0x7f060002

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    const/high16 v4, 0x7f060000

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 264
    packed-switch p1, :pswitch_data_0

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 266
    .end local v0    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 267
    .restart local v0    # "dialog":Landroid/app/Dialog;
    const/high16 v2, 0x7f030000

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 268
    const v2, 0x7f050010

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    const v2, 0x7f070002

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 270
    .local v1, "txtVersion":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 124
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f060001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 125
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 133
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/AddServerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->finish()V

    move v1, v2

    .line 136
    goto :goto_0

    .line 138
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->updateServers()V

    move v1, v2

    .line 139
    goto :goto_0

    .line 141
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/MainActivity;->finish()V

    move v1, v2

    .line 144
    goto :goto_0

    .line 146
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/MainActivity;->showDialog(I)V

    move v1, v2

    .line 147
    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x7f070020
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
