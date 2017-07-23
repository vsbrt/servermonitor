.class public Lcom/odinnet/servermonitor/adapters/ServerListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ServerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odinnet/servermonitor/adapters/ServerListAdapter$1;
    }
.end annotation


# instance fields
.field private components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/odinnet/servermonitor/data/ServerComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private servers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/odinnet/servermonitor/data/Server;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/odinnet/servermonitor/data/Server;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/odinnet/servermonitor/data/ServerComponent;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/Server;>;"
    .local p3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/ServerComponent;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->servers:Ljava/util/ArrayList;

    .line 25
    iput-object p3, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->components:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/adapters/ServerListAdapter;
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/adapters/ServerListAdapter;
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/odinnet/servermonitor/data/ServerComponent;

    invoke-virtual {p0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentID()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/data/ServerComponent;

    .line 42
    .local v0, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    if-nez p4, :cond_0

    .line 43
    iget-object v4, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 44
    .local v3, "infalInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 46
    .end local v3    # "infalInflater":Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f070016

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, "componentName":Landroid/widget/TextView;
    const v4, 0x7f070017

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    .local v2, "componentStatus":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "         "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v4, v5, :cond_1

    .line 50
    const v4, 0x7f05003c

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 51
    const v4, -0xff0100

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    :goto_0
    return-object p4

    .line 53
    :cond_1
    const v4, 0x7f05003d

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 54
    const/high16 v4, -0x10000

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/adapters/ServerListAdapter;
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/adapters/ServerListAdapter;
    check-cast p0, Lcom/odinnet/servermonitor/data/Server;

    invoke-virtual {p0}, Lcom/odinnet/servermonitor/data/Server;->getServerID()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f05003d

    const/16 v6, 0xff

    .line 83
    invoke-virtual {p0, p1}, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/odinnet/servermonitor/data/Server;

    .line 84
    .local v1, "server":Lcom/odinnet/servermonitor/data/Server;
    if-nez p3, :cond_0

    .line 85
    iget-object v4, p0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 86
    .local v0, "infalInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03000b

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 88
    .end local v0    # "infalInflater":Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f070006

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    .local v2, "serverName":Landroid/widget/TextView;
    const v4, 0x7f07001d

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 90
    .local v3, "serverStatus":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "       "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/data/Server;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget-object v4, Lcom/odinnet/servermonitor/adapters/ServerListAdapter$1;->$SwitchMap$com$odinnet$servermonitor$data$Status:[I

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/data/Server;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Status;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 105
    :goto_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/data/Server;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v4, v5, :cond_1

    .line 108
    :cond_1
    return-object p3

    .line 93
    :pswitch_0
    const v4, 0x7f05003c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v4, -0xff0100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 98
    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 102
    const/16 v4, 0xa5

    const/4 v5, 0x0

    invoke-static {v6, v6, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
