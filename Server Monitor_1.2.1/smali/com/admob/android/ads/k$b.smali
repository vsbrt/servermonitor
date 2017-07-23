.class public final Lcom/admob/android/ads/k$b;
.super Ljava/lang/Thread;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/admob/android/ads/k;)V
    .locals 1

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 852
    iput-object p1, p0, Lcom/admob/android/ads/k$b;->a:Lorg/json/JSONObject;

    .line 853
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/k$b;->b:Ljava/lang/ref/WeakReference;

    .line 854
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const-string v3, "AdMobSDK"

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/k$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/k;

    .line 862
    if-eqz v0, :cond_0

    .line 864
    iget-object v1, v0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, v0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    iget-object v2, p0, Lcom/admob/android/ads/k$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;)V

    .line 869
    iget-object v1, v0, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    if-eqz v1, :cond_0

    .line 871
    iget-object v0, v0, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    invoke-virtual {v0}, Lcom/admob/android/ads/AdView;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 876
    :catch_0
    move-exception v0

    .line 878
    const-string v1, "AdMobSDK"

    const/4 v1, 0x6

    invoke-static {v3, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    const-string v1, "AdMobSDK"

    const-string v1, "exception caught in AdClickThread.run(), "

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
