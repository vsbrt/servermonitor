.class public Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;
.super Ljava/lang/Object;
.source "NegotiatedParameters.java"


# instance fields
.field public comp_algo_client_to_server:Ljava/lang/String;

.field public comp_algo_server_to_client:Ljava/lang/String;

.field public enc_algo_client_to_server:Ljava/lang/String;

.field public enc_algo_server_to_client:Ljava/lang/String;

.field public guessOK:Z

.field public kex_algo:Ljava/lang/String;

.field public lang_client_to_server:Ljava/lang/String;

.field public lang_server_to_client:Ljava/lang/String;

.field public mac_algo_client_to_server:Ljava/lang/String;

.field public mac_algo_server_to_client:Ljava/lang/String;

.field public server_host_key_algo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
