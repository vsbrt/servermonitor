.class final Lcom/admob/android/ads/j$d;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/j;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/j;Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 2071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2072
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/j$d;->a:Ljava/lang/ref/WeakReference;

    .line 2073
    iput-object p2, p0, Lcom/admob/android/ads/j$d;->b:Lorg/json/JSONArray;

    .line 2074
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const-string v3, "AdMobSDK"

    .line 2085
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/j$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/j;

    .line 2086
    if-eqz v0, :cond_0

    .line 2087
    iget-object v1, p0, Lcom/admob/android/ads/j$d;->b:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/admob/android/ads/j;->a(Lcom/admob/android/ads/j;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2090
    :catch_0
    move-exception v0

    .line 2092
    const-string v1, "AdMobSDK"

    const/4 v1, 0x6

    invoke-static {v3, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2094
    const-string v1, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception caught in Ad$ViewAdd.run(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2097
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/j$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/j;

    .line 2098
    if-eqz p0, :cond_0

    .line 2099
    invoke-static {p0}, Lcom/admob/android/ads/j;->a(Lcom/admob/android/ads/j;)V

    goto :goto_0
.end method
