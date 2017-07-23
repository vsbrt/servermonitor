.class public Lcom/odinnet/servermonitor/activity/AdListener;
.super Lcom/admob/android/ads/SimpleAdListener;
.source "AdListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/admob/android/ads/SimpleAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V

    .line 15
    return-void
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V

    .line 24
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onReceiveAd(Lcom/admob/android/ads/AdView;)V

    .line 33
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V

    .line 42
    return-void
.end method
