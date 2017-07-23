.class public final Lcom/admob/android/ads/r;
.super Ljava/lang/Object;
.source "AdMobOpenerInfo.java"

# interfaces
.implements Lcom/admob/android/ads/n;


# instance fields
.field public a:Lcom/admob/android/ads/j$a;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/admob/android/ads/w;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Lcom/admob/android/ads/q$a;

.field public f:Z

.field public g:Landroid/graphics/Point;

.field public h:Lcom/admob/android/ads/p;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Landroid/os/Bundle;

.field public l:Z

.field private m:Z

.field private n:Landroid/graphics/Point;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/admob/android/ads/j$a;->a:Lcom/admob/android/ads/j$a;

    iput-object v0, p0, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/admob/android/ads/r;->b:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/r;->c:Ljava/util/Vector;

    .line 93
    iput-object v2, p0, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/admob/android/ads/q$a;->c:Lcom/admob/android/ads/q$a;

    iput-object v0, p0, Lcom/admob/android/ads/r;->e:Lcom/admob/android/ads/q$a;

    .line 96
    iput-boolean v1, p0, Lcom/admob/android/ads/r;->m:Z

    .line 97
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/admob/android/ads/r;->g:Landroid/graphics/Point;

    .line 99
    iput-boolean v1, p0, Lcom/admob/android/ads/r;->f:Z

    .line 100
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/admob/android/ads/r;->n:Landroid/graphics/Point;

    .line 102
    iput-object v2, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    .line 104
    iput-object v2, p0, Lcom/admob/android/ads/r;->i:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/admob/android/ads/r;->j:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/admob/android/ads/r;->o:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/r;->k:Landroid/os/Bundle;

    .line 109
    iput-boolean v1, p0, Lcom/admob/android/ads/r;->l:Z

    .line 110
    return-void
.end method

.method public static a(Z)B
    .locals 1

    .prologue
    .line 349
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([I)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 342
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 343
    :cond_0
    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public static a(B)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 353
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Point;)[I
    .locals 3

    .prologue
    .line 335
    if-nez p0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Landroid/graphics/Point;->x:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/Point;->y:I

    aput v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v1, "a"

    iget-object v2, p0, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    invoke-virtual {v2}, Lcom/admob/android/ads/j$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "t"

    iget-object v2, p0, Lcom/admob/android/ads/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "c"

    iget-object v2, p0, Lcom/admob/android/ads/r;->c:Ljava/util/Vector;

    invoke-static {v2}, Lcom/admob/android/ads/AdView$a;->a(Ljava/util/Vector;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 151
    const-string v1, "au"

    iget-object v2, p0, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "or"

    iget-object v2, p0, Lcom/admob/android/ads/r;->e:Lcom/admob/android/ads/q$a;

    invoke-virtual {v2}, Lcom/admob/android/ads/q$a;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v1, "tr"

    iget-boolean v2, p0, Lcom/admob/android/ads/r;->m:Z

    invoke-static {v2}, Lcom/admob/android/ads/r;->a(Z)B

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 155
    const-string v1, "sc"

    iget-boolean v2, p0, Lcom/admob/android/ads/r;->f:Z

    invoke-static {v2}, Lcom/admob/android/ads/r;->a(Z)B

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 156
    const-string v1, "cbo"

    iget-object v2, p0, Lcom/admob/android/ads/r;->g:Landroid/graphics/Point;

    invoke-static {v2}, Lcom/admob/android/ads/r;->a(Landroid/graphics/Point;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 158
    const-string v1, "cs"

    iget-object v2, p0, Lcom/admob/android/ads/r;->n:Landroid/graphics/Point;

    invoke-static {v2}, Lcom/admob/android/ads/r;->a(Landroid/graphics/Point;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 160
    const-string v1, "mi"

    iget-object v2, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    invoke-static {v2}, Lcom/admob/android/ads/AdView$a;->a(Lcom/admob/android/ads/n;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 162
    const-string v1, "su"

    iget-object v2, p0, Lcom/admob/android/ads/r;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "si"

    iget-object v2, p0, Lcom/admob/android/ads/r;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "json"

    iget-object v2, p0, Lcom/admob/android/ads/r;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "$"

    iget-object v2, p0, Lcom/admob/android/ads/r;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 166
    const-string v1, "int"

    iget-boolean v2, p0, Lcom/admob/android/ads/r;->l:Z

    invoke-static {v2}, Lcom/admob/android/ads/r;->a(Z)B

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 169
    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 113
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/admob/android/ads/r;->c:Ljava/util/Vector;

    new-instance v1, Lcom/admob/android/ads/w;

    invoke-direct {v1, p1, p2}, Lcom/admob/android/ads/w;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lcom/admob/android/ads/u;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v2, "au"

    const-string v10, "$"

    .line 227
    const-string v0, "a"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/admob/android/ads/j$a;->a(Ljava/lang/String;)Lcom/admob/android/ads/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    .line 231
    const-string v0, "au"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0, v0, v8}, Lcom/admob/android/ads/r;->a(Ljava/lang/String;Z)V

    .line 236
    const-string v0, "tu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p0, v0, v7}, Lcom/admob/android/ads/r;->a(Ljava/lang/String;Z)V

    .line 240
    const-string v0, "stats"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admob/android/ads/r;->i:Ljava/lang/String;

    .line 243
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->j:Ljava/lang/String;

    .line 247
    :cond_0
    const-string v0, "or"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    sget-object v0, Lcom/admob/android/ads/q$a;->b:Lcom/admob/android/ads/q$a;

    iput-object v0, p0, Lcom/admob/android/ads/r;->e:Lcom/admob/android/ads/q$a;

    .line 257
    :cond_1
    :goto_0
    const-string v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/admob/android/ads/r;->m:Z

    .line 258
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->b:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    sget-object v1, Lcom/admob/android/ads/j$a;->c:Lcom/admob/android/ads/j$a;

    if-ne v0, v1, :cond_5

    .line 262
    new-instance v0, Lcom/admob/android/ads/p;

    invoke-direct {v0}, Lcom/admob/android/ads/p;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    .line 265
    const-string v0, "$"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 267
    if-eqz p2, :cond_2

    .line 269
    :try_start_0
    invoke-virtual {p2, v0, p3}, Lcom/admob/android/ads/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "u"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/p;->a:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "au"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/p;->b:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "tu"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/p;->c:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/p;->d:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "mc"

    invoke-virtual {p1, v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/admob/android/ads/p;->e:I

    .line 281
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "msm"

    invoke-virtual {p1, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/admob/android/ads/p;->f:I

    .line 282
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "stats"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/p;->g:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "splash"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/p;->h:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "splash_duration"

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/admob/android/ads/p;->i:D

    .line 285
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "skip_down"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/p;->j:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "skip_up"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/p;->k:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "no_splash_skip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/admob/android/ads/p;->l:Z

    .line 289
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "replay_down"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/p;->m:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    const-string v1, "replay_up"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/p;->n:Ljava/lang/String;

    .line 292
    const-string v0, "buttons"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_5

    .line 294
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v2, v7

    .line 295
    :goto_3
    if-ge v2, v1, :cond_5

    .line 296
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 298
    new-instance v4, Lcom/admob/android/ads/o;

    invoke-direct {v4}, Lcom/admob/android/ads/o;-><init>()V

    .line 299
    const-string v5, "$"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/admob/android/ads/o;->a:Ljava/lang/String;

    .line 300
    const-string v5, "h"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/admob/android/ads/o;->b:Ljava/lang/String;

    .line 301
    const-string v5, "x"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/admob/android/ads/o;->c:Ljava/lang/String;

    .line 302
    const-string v5, "analytics_page_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/admob/android/ads/o;->e:Ljava/lang/String;

    .line 303
    iget-object v5, v4, Lcom/admob/android/ads/o;->d:Lcom/admob/android/ads/r;

    const-string v6, "o"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6, p2, p3}, Lcom/admob/android/ads/r;->a(Lorg/json/JSONObject;Lcom/admob/android/ads/u;Ljava/lang/String;)V

    .line 304
    const-string v5, "o"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/admob/android/ads/o;->f:Ljava/lang/String;

    .line 305
    iget-object v3, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    iget-object v3, v3, Lcom/admob/android/ads/p;->o:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 252
    :cond_3
    sget-object v0, Lcom/admob/android/ads/q$a;->a:Lcom/admob/android/ads/q$a;

    iput-object v0, p0, Lcom/admob/android/ads/r;->e:Lcom/admob/android/ads/q$a;

    goto/16 :goto_0

    :cond_4
    move v0, v7

    .line 257
    goto/16 :goto_1

    .line 316
    :cond_5
    const-string v0, "sc"

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 317
    if-eqz v0, :cond_7

    move v0, v8

    :goto_4
    iput-boolean v0, p0, Lcom/admob/android/ads/r;->f:Z

    .line 319
    const-string v0, "co"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v1, v9, :cond_6

    .line 322
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/admob/android/ads/r;->g:Landroid/graphics/Point;

    .line 331
    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->o:Ljava/lang/String;

    .line 332
    return-void

    :cond_7
    move v0, v7

    .line 317
    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 173
    if-nez p1, :cond_0

    move v0, v4

    .line 218
    :goto_0
    return v0

    .line 176
    :cond_0
    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admob/android/ads/j$a;->a(Ljava/lang/String;)Lcom/admob/android/ads/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    .line 177
    const-string v0, "t"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->b:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/r;->c:Ljava/util/Vector;

    .line 179
    const-string v0, "c"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 182
    if-eqz v0, :cond_1

    .line 183
    new-instance v2, Lcom/admob/android/ads/w;

    invoke-direct {v2}, Lcom/admob/android/ads/w;-><init>()V

    .line 184
    const-string v3, "u"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    const-string v3, "p"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/admob/android/ads/w;->b:Z

    .line 185
    iget-object v0, p0, Lcom/admob/android/ads/r;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_2
    const-string v0, "au"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    .line 192
    const-string v0, "or"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/admob/android/ads/q$a;->a(I)Lcom/admob/android/ads/q$a;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->e:Lcom/admob/android/ads/q$a;

    .line 194
    const-string v0, "tr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Lcom/admob/android/ads/r;->a(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/admob/android/ads/r;->m:Z

    .line 196
    const-string v0, "sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Lcom/admob/android/ads/r;->a(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/admob/android/ads/r;->f:Z

    .line 197
    const-string v0, "cbo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/admob/android/ads/r;->a([I)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->g:Landroid/graphics/Point;

    .line 198
    iget-object v0, p0, Lcom/admob/android/ads/r;->g:Landroid/graphics/Point;

    if-nez v0, :cond_3

    .line 199
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/admob/android/ads/r;->g:Landroid/graphics/Point;

    .line 202
    :cond_3
    const-string v0, "cs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/admob/android/ads/r;->a([I)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->n:Landroid/graphics/Point;

    .line 204
    new-instance v0, Lcom/admob/android/ads/p;

    invoke-direct {v0}, Lcom/admob/android/ads/p;-><init>()V

    .line 205
    const-string v1, "mi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/p;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    iput-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    .line 211
    :goto_2
    const-string v0, "su"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->i:Ljava/lang/String;

    .line 212
    const-string v0, "si"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->j:Ljava/lang/String;

    .line 214
    const-string v0, "json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->o:Ljava/lang/String;

    .line 215
    const-string v0, "$"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/r;->k:Landroid/os/Bundle;

    .line 216
    const-string v0, "int"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Lcom/admob/android/ads/r;->a(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/admob/android/ads/r;->l:Z

    .line 218
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 208
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    goto :goto_2
.end method

.method public final b()Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/admob/android/ads/r;->k:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 134
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 135
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/admob/android/ads/r;->k:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 137
    instance-of v4, v1, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 138
    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_1
    return-object v2
.end method
