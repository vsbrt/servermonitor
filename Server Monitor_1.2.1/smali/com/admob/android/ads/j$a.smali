.class public final enum Lcom/admob/android/ads/j$a;
.super Ljava/lang/Enum;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/admob/android/ads/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/admob/android/ads/j$a;

.field public static final enum b:Lcom/admob/android/ads/j$a;

.field public static final enum c:Lcom/admob/android/ads/j$a;

.field public static final enum d:Lcom/admob/android/ads/j$a;

.field private static enum e:Lcom/admob/android/ads/j$a;

.field private static enum f:Lcom/admob/android/ads/j$a;

.field private static enum g:Lcom/admob/android/ads/j$a;

.field private static enum h:Lcom/admob/android/ads/j$a;

.field private static enum i:Lcom/admob/android/ads/j$a;

.field private static enum j:Lcom/admob/android/ads/j$a;

.field private static final synthetic l:[Lcom/admob/android/ads/j$a;


# instance fields
.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    new-instance v0, Lcom/admob/android/ads/j$a;

    const-string v1, "CLICK_TO_MAP"

    const-string v2, "map"

    invoke-direct {v0, v1, v4, v2}, Lcom/admob/android/ads/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/j$a;->e:Lcom/admob/android/ads/j$a;

    .line 86
    new-instance v0, Lcom/admob/android/ads/j$a;

    const-string v1, "CLICK_TO_VIDEO"

    const-string v2, "video"

    invoke-direct {v0, v1, v5, v2}, Lcom/admob/android/ads/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/j$a;->f:Lcom/admob/android/ads/j$a;

    .line 87
    new-instance v0, Lcom/admob/android/ads/j$a;

    const-string v1, "CLICK_TO_APP"

    const-string v2, "app"

    invoke-direct {v0, v1, v6, v2}, Lcom/admob/android/ads/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/j$a;->g:Lcom/admob/android/ads/j$a;

    .line 88
    new-instance v0, Lcom/admob/android/ads/j$a;

    const-string v1, "CLICK_TO_BROWSER"

    const-string v2, "url"

    invoke-direct {v0, v1, v7, v2}, Lcom/admob/android/ads/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/j$a;->a:Lcom/admob/android/ads/j$a;

    .line 89
    new-instance v0, Lcom/admob/android/ads/j$a;

    const-string v1, "CLICK_TO_CALL"

    const-string v2, "call"

    invoke-direct {v0, v1, v8, v2}, Lcom/admob/android/ads/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/j$a;->h:Lcom/admob/android/ads/j$a;

    .line 90
    new-instance v0, Lcom/admob/android/ads/j$a;

    const-string v1, "CLICK_TO_MUSIC"

    const/4 v2, 0x5

    const-string v3, "itunes"

    invoke-direct {v0, v1, v2, v3}, Lcom/admob/android/ads/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/j$a;->i:Lcom/admob/android/ads/j$a;

    .line 91
    new-instance v0, Lcom/admob/android/ads/j$a;

    const-string v1, "CLICK_TO_CANVAS"

    const/4 v2, 0x6

    const-string v3, "canvas"

    invoke-direct {v0, v1, v2, v3}, Lcom/admob/android/ads/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/j$a;->b:Lcom/admob/android/ads/j$a;

    .line 92
    new-instance v0, Lcom/admob/android/ads/j$a;

    const-string v1, "CLICK_TO_CONTACT"

    const/4 v2, 0x7

    const-string v3, "contact"

    invoke-direct {v0, v1, v2, v3}, Lcom/admob/android/ads/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/j$a;->j:Lcom/admob/android/ads/j$a;

    .line 93
    new-instance v0, Lcom/admob/android/ads/j$a;

    const-string v1, "CLICK_TO_INTERACTIVE_VIDEO"

    const/16 v2, 0x8

    const-string v3, "movie"

    invoke-direct {v0, v1, v2, v3}, Lcom/admob/android/ads/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/j$a;->c:Lcom/admob/android/ads/j$a;

    .line 94
    new-instance v0, Lcom/admob/android/ads/j$a;

    const-string v1, "CLICK_TO_FULLSCREEN_BROWSER"

    const/16 v2, 0x9

    const-string v3, "screen"

    invoke-direct {v0, v1, v2, v3}, Lcom/admob/android/ads/j$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/j$a;->d:Lcom/admob/android/ads/j$a;

    .line 83
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/admob/android/ads/j$a;

    sget-object v1, Lcom/admob/android/ads/j$a;->e:Lcom/admob/android/ads/j$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/admob/android/ads/j$a;->f:Lcom/admob/android/ads/j$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/admob/android/ads/j$a;->g:Lcom/admob/android/ads/j$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/admob/android/ads/j$a;->a:Lcom/admob/android/ads/j$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/admob/android/ads/j$a;->h:Lcom/admob/android/ads/j$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/admob/android/ads/j$a;->i:Lcom/admob/android/ads/j$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/admob/android/ads/j$a;->b:Lcom/admob/android/ads/j$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/admob/android/ads/j$a;->j:Lcom/admob/android/ads/j$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/admob/android/ads/j$a;->c:Lcom/admob/android/ads/j$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/admob/android/ads/j$a;->d:Lcom/admob/android/ads/j$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/admob/android/ads/j$a;->l:[Lcom/admob/android/ads/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-object p3, p0, Lcom/admob/android/ads/j$a;->k:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/admob/android/ads/j$a;
    .locals 6

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    invoke-static {}, Lcom/admob/android/ads/j$a;->values()[Lcom/admob/android/ads/j$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 112
    invoke-virtual {v4}, Lcom/admob/android/ads/j$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    .line 117
    :cond_0
    return-object v0

    .line 111
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admob/android/ads/j$a;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/admob/android/ads/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/j$a;

    return-object p0
.end method

.method public static values()[Lcom/admob/android/ads/j$a;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/admob/android/ads/j$a;->l:[Lcom/admob/android/ads/j$a;

    invoke-virtual {v0}, [Lcom/admob/android/ads/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/admob/android/ads/j$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/admob/android/ads/j$a;->k:Ljava/lang/String;

    return-object v0
.end method
