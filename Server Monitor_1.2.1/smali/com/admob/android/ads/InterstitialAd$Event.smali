.class public final enum Lcom/admob/android/ads/InterstitialAd$Event;
.super Ljava/lang/Enum;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/admob/android/ads/InterstitialAd$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_START:Lcom/admob/android/ads/InterstitialAd$Event;

.field public static final enum OTHER:Lcom/admob/android/ads/InterstitialAd$Event;

.field public static final enum POST_ROLL:Lcom/admob/android/ads/InterstitialAd$Event;

.field public static final enum PRE_ROLL:Lcom/admob/android/ads/InterstitialAd$Event;

.field public static final enum SCREEN_CHANGE:Lcom/admob/android/ads/InterstitialAd$Event;

.field private static final synthetic a:[Lcom/admob/android/ads/InterstitialAd$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/admob/android/ads/InterstitialAd$Event;

    const-string v1, "APP_START"

    invoke-direct {v0, v1, v2}, Lcom/admob/android/ads/InterstitialAd$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/InterstitialAd$Event;->APP_START:Lcom/admob/android/ads/InterstitialAd$Event;

    .line 97
    new-instance v0, Lcom/admob/android/ads/InterstitialAd$Event;

    const-string v1, "SCREEN_CHANGE"

    invoke-direct {v0, v1, v3}, Lcom/admob/android/ads/InterstitialAd$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/InterstitialAd$Event;->SCREEN_CHANGE:Lcom/admob/android/ads/InterstitialAd$Event;

    .line 99
    new-instance v0, Lcom/admob/android/ads/InterstitialAd$Event;

    const-string v1, "PRE_ROLL"

    invoke-direct {v0, v1, v4}, Lcom/admob/android/ads/InterstitialAd$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/InterstitialAd$Event;->PRE_ROLL:Lcom/admob/android/ads/InterstitialAd$Event;

    .line 101
    new-instance v0, Lcom/admob/android/ads/InterstitialAd$Event;

    const-string v1, "POST_ROLL"

    invoke-direct {v0, v1, v5}, Lcom/admob/android/ads/InterstitialAd$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/InterstitialAd$Event;->POST_ROLL:Lcom/admob/android/ads/InterstitialAd$Event;

    .line 103
    new-instance v0, Lcom/admob/android/ads/InterstitialAd$Event;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/admob/android/ads/InterstitialAd$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/InterstitialAd$Event;->OTHER:Lcom/admob/android/ads/InterstitialAd$Event;

    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/admob/android/ads/InterstitialAd$Event;

    sget-object v1, Lcom/admob/android/ads/InterstitialAd$Event;->APP_START:Lcom/admob/android/ads/InterstitialAd$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/admob/android/ads/InterstitialAd$Event;->SCREEN_CHANGE:Lcom/admob/android/ads/InterstitialAd$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/admob/android/ads/InterstitialAd$Event;->PRE_ROLL:Lcom/admob/android/ads/InterstitialAd$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/admob/android/ads/InterstitialAd$Event;->POST_ROLL:Lcom/admob/android/ads/InterstitialAd$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/admob/android/ads/InterstitialAd$Event;->OTHER:Lcom/admob/android/ads/InterstitialAd$Event;

    aput-object v1, v0, v6

    sput-object v0, Lcom/admob/android/ads/InterstitialAd$Event;->a:[Lcom/admob/android/ads/InterstitialAd$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admob/android/ads/InterstitialAd$Event;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/admob/android/ads/InterstitialAd$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/InterstitialAd$Event;

    return-object p0
.end method

.method public static values()[Lcom/admob/android/ads/InterstitialAd$Event;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/admob/android/ads/InterstitialAd$Event;->a:[Lcom/admob/android/ads/InterstitialAd$Event;

    invoke-virtual {v0}, [Lcom/admob/android/ads/InterstitialAd$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/admob/android/ads/InterstitialAd$Event;

    return-object v0
.end method
