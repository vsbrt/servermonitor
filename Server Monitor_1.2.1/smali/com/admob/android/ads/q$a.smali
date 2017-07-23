.class public final enum Lcom/admob/android/ads/q$a;
.super Ljava/lang/Enum;
.source "AdMobOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/admob/android/ads/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/admob/android/ads/q$a;

.field public static final enum b:Lcom/admob/android/ads/q$a;

.field public static final enum c:Lcom/admob/android/ads/q$a;

.field private static final synthetic e:[Lcom/admob/android/ads/q$a;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    new-instance v0, Lcom/admob/android/ads/q$a;

    const-string v1, "PORTRAIT"

    const-string v2, "p"

    invoke-direct {v0, v1, v3, v2}, Lcom/admob/android/ads/q$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/q$a;->a:Lcom/admob/android/ads/q$a;

    .line 172
    new-instance v0, Lcom/admob/android/ads/q$a;

    const-string v1, "LANDSCAPE"

    const-string v2, "l"

    invoke-direct {v0, v1, v4, v2}, Lcom/admob/android/ads/q$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/q$a;->b:Lcom/admob/android/ads/q$a;

    .line 173
    new-instance v0, Lcom/admob/android/ads/q$a;

    const-string v1, "ANY"

    const-string v2, "a"

    invoke-direct {v0, v1, v5, v2}, Lcom/admob/android/ads/q$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admob/android/ads/q$a;->c:Lcom/admob/android/ads/q$a;

    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/admob/android/ads/q$a;

    sget-object v1, Lcom/admob/android/ads/q$a;->a:Lcom/admob/android/ads/q$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/admob/android/ads/q$a;->b:Lcom/admob/android/ads/q$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/admob/android/ads/q$a;->c:Lcom/admob/android/ads/q$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/admob/android/ads/q$a;->e:[Lcom/admob/android/ads/q$a;

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
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput-object p3, p0, Lcom/admob/android/ads/q$a;->d:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public static a(I)Lcom/admob/android/ads/q$a;
    .locals 7

    .prologue
    .line 186
    sget-object v0, Lcom/admob/android/ads/q$a;->c:Lcom/admob/android/ads/q$a;

    .line 188
    invoke-static {}, Lcom/admob/android/ads/q$a;->values()[Lcom/admob/android/ads/q$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v6, v3

    move-object v3, v0

    move v0, v6

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, v1, v0

    .line 189
    invoke-virtual {v4}, Lcom/admob/android/ads/q$a;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v3, v4

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admob/android/ads/q$a;
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/admob/android/ads/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/q$a;

    return-object p0
.end method

.method public static values()[Lcom/admob/android/ads/q$a;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/admob/android/ads/q$a;->e:[Lcom/admob/android/ads/q$a;

    invoke-virtual {v0}, [Lcom/admob/android/ads/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/admob/android/ads/q$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/admob/android/ads/q$a;->d:Ljava/lang/String;

    return-object v0
.end method
