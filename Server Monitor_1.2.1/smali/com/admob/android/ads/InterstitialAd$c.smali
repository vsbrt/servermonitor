.class final Lcom/admob/android/ads/InterstitialAd$c;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/admob/android/ads/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Lcom/admob/android/ads/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    .line 112
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/admob/android/ads/InterstitialAd;->c()V

    .line 126
    :cond_0
    return-void
.end method

.method public final a(Lcom/admob/android/ads/j;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    invoke-static {v0, p1}, Lcom/admob/android/ads/InterstitialAd;->a(Lcom/admob/android/ads/InterstitialAd;Lcom/admob/android/ads/j;)V

    .line 134
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/admob/android/ads/InterstitialAd;->a()V

    .line 136
    :cond_0
    return-void
.end method
