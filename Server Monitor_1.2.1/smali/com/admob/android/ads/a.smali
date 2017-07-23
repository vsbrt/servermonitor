.class final enum Lcom/admob/android/ads/a;
.super Ljava/lang/Enum;
.source "AdMobAudioRoute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/admob/android/ads/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/admob/android/ads/a;

.field public static final enum b:Lcom/admob/android/ads/a;

.field public static final enum c:Lcom/admob/android/ads/a;

.field public static final enum d:Lcom/admob/android/ads/a;

.field private static enum e:Lcom/admob/android/ads/a;

.field private static final synthetic f:[Lcom/admob/android/ads/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/admob/android/ads/a;

    const-string v1, "SPEAKER"

    invoke-direct {v0, v1, v2}, Lcom/admob/android/ads/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/a;->a:Lcom/admob/android/ads/a;

    .line 5
    new-instance v0, Lcom/admob/android/ads/a;

    const-string v1, "HEADPHONES"

    invoke-direct {v0, v1, v3}, Lcom/admob/android/ads/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/a;->e:Lcom/admob/android/ads/a;

    .line 6
    new-instance v0, Lcom/admob/android/ads/a;

    const-string v1, "VIBRATE"

    invoke-direct {v0, v1, v4}, Lcom/admob/android/ads/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/a;->b:Lcom/admob/android/ads/a;

    .line 7
    new-instance v0, Lcom/admob/android/ads/a;

    const-string v1, "EMULATOR"

    invoke-direct {v0, v1, v5}, Lcom/admob/android/ads/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/a;->c:Lcom/admob/android/ads/a;

    .line 8
    new-instance v0, Lcom/admob/android/ads/a;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/admob/android/ads/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/a;->d:Lcom/admob/android/ads/a;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/admob/android/ads/a;

    sget-object v1, Lcom/admob/android/ads/a;->a:Lcom/admob/android/ads/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/admob/android/ads/a;->e:Lcom/admob/android/ads/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/admob/android/ads/a;->b:Lcom/admob/android/ads/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/admob/android/ads/a;->c:Lcom/admob/android/ads/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/admob/android/ads/a;->d:Lcom/admob/android/ads/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/admob/android/ads/a;->f:[Lcom/admob/android/ads/a;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admob/android/ads/a;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/admob/android/ads/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/a;

    return-object p0
.end method

.method public static values()[Lcom/admob/android/ads/a;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/admob/android/ads/a;->f:[Lcom/admob/android/ads/a;

    invoke-virtual {v0}, [Lcom/admob/android/ads/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/admob/android/ads/a;

    return-object v0
.end method
