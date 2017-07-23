.class public Lcom/odinnet/servermonitor/service/MonitorService$LocalBinder;
.super Landroid/os/Binder;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/service/MonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odinnet/servermonitor/service/MonitorService;


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/service/MonitorService;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/odinnet/servermonitor/service/MonitorService$LocalBinder;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/odinnet/servermonitor/service/MonitorService;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/odinnet/servermonitor/service/MonitorService$LocalBinder;->this$0:Lcom/odinnet/servermonitor/service/MonitorService;

    return-object v0
.end method
