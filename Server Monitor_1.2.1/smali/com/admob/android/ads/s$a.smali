.class final Lcom/admob/android/ads/s$a;
.super Ljava/lang/Thread;
.source "AdMobImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/admob/android/ads/s;


# direct methods
.method synthetic constructor <init>(Lcom/admob/android/ads/s;)V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/admob/android/ads/s$a;-><init>(Lcom/admob/android/ads/s;B)V

    return-void
.end method

.method private constructor <init>(Lcom/admob/android/ads/s;B)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/admob/android/ads/s$a;->a:Lcom/admob/android/ads/s;

    .line 202
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/admob/android/ads/s$a;->a:Lcom/admob/android/ads/s;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/admob/android/ads/s$a;->a:Lcom/admob/android/ads/s;

    invoke-static {v0}, Lcom/admob/android/ads/s;->a(Lcom/admob/android/ads/s;)V

    .line 208
    :cond_0
    return-void
.end method
