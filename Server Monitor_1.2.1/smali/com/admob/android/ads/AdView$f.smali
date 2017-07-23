.class final Lcom/admob/android/ads/AdView$f;
.super Ljava/lang/Object;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# static fields
.field public static final a:Lcom/admob/android/ads/AdView$f;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x140

    .line 73
    new-instance v0, Lcom/admob/android/ads/AdView$f;

    const/16 v1, 0x30

    invoke-direct {v0, v2, v1}, Lcom/admob/android/ads/AdView$f;-><init>(II)V

    sput-object v0, Lcom/admob/android/ads/AdView$f;->a:Lcom/admob/android/ads/AdView$f;

    .line 74
    new-instance v0, Lcom/admob/android/ads/AdView$f;

    const/16 v1, 0x10e

    invoke-direct {v0, v2, v1}, Lcom/admob/android/ads/AdView$f;-><init>(II)V

    .line 75
    new-instance v0, Lcom/admob/android/ads/AdView$f;

    const/16 v1, 0x2ec

    const/16 v2, 0x6e

    invoke-direct {v0, v1, v2}, Lcom/admob/android/ads/AdView$f;-><init>(II)V

    .line 76
    new-instance v0, Lcom/admob/android/ads/AdView$f;

    const/16 v1, 0x1e8

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/admob/android/ads/AdView$f;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/admob/android/ads/AdView$f;->b:I

    .line 62
    iput p2, p0, Lcom/admob/android/ads/AdView$f;->c:I

    .line 63
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    iget v1, p0, Lcom/admob/android/ads/AdView$f;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Lcom/admob/android/ads/AdView$f;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
