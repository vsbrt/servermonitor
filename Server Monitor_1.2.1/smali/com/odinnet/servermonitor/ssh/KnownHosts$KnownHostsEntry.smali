.class Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;
.super Ljava/lang/Object;
.source "KnownHosts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/ssh/KnownHosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnownHostsEntry"
.end annotation


# instance fields
.field key:Ljava/lang/Object;

.field patterns:[Ljava/lang/String;

.field final synthetic this$0:Lcom/odinnet/servermonitor/ssh/KnownHosts;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/KnownHosts;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2, "patterns"    # [Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/Object;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;->this$0:Lcom/odinnet/servermonitor/ssh/KnownHosts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;->key:Ljava/lang/Object;

    .line 61
    return-void
.end method
