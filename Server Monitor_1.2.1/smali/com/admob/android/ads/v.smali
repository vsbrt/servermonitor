.class public Lcom/admob/android/ads/v;
.super Ljava/lang/Object;
.source "AudioManagerWrapper.java"


# instance fields
.field public a:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/admob/android/ads/v;->a:Landroid/media/AudioManager;

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/admob/android/ads/v;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/admob/android/ads/v;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/admob/android/ads/v;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/admob/android/ads/v;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method
