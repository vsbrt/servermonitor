.class public Lcom/admob/android/ads/view/AdMobWebView;
.super Landroid/webkit/WebView;
.source "AdMobWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field protected d:Lcom/admob/android/ads/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 87
    iput-boolean p2, p0, Lcom/admob/android/ads/view/AdMobWebView;->a:Z

    .line 88
    iput-object p3, p0, Lcom/admob/android/ads/view/AdMobWebView;->b:Ljava/lang/ref/WeakReference;

    .line 90
    invoke-virtual {p0}, Lcom/admob/android/ads/view/AdMobWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 97
    invoke-static {}, Lcom/admob/android/ads/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p3}, Lcom/admob/android/ads/view/AdMobWebView;->a(Ljava/lang/ref/WeakReference;)Lcom/admob/android/ads/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/view/AdMobWebView;->d:Lcom/admob/android/ads/ae;

    .line 100
    iget-object v0, p0, Lcom/admob/android/ads/view/AdMobWebView;->d:Lcom/admob/android/ads/ae;

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/view/AdMobWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 101
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZLandroid/graphics/Point;FLjava/lang/ref/WeakReference;)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/graphics/Point;",
            "F",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v8, 0x0

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 48
    new-instance v1, Lcom/admob/android/ads/view/AdMobWebView;

    invoke-direct {v1, p0, p3, p6}, Lcom/admob/android/ads/view/AdMobWebView;-><init>(Landroid/content/Context;ZLjava/lang/ref/WeakReference;)V

    .line 49
    invoke-virtual {v1, v8}, Lcom/admob/android/ads/view/AdMobWebView;->setBackgroundColor(I)V

    .line 51
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    if-eqz p3, :cond_0

    .line 58
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 59
    const v3, 0x1080017

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 60
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 62
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    iget v4, p4, Landroid/graphics/Point;->x:I

    float-to-double v5, p5

    invoke-static {v4, v5, v6}, Lcom/admob/android/ads/j;->a(ID)I

    move-result v4

    iget v5, p4, Landroid/graphics/Point;->y:I

    float-to-double v6, p5

    invoke-static {v5, v6, v7}, Lcom/admob/android/ads/j;->a(ID)I

    move-result v5

    invoke-virtual {v3, v4, v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 68
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_0
    iput-object p1, v1, Lcom/admob/android/ads/view/AdMobWebView;->c:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, p1}, Lcom/admob/android/ads/view/AdMobWebView;->loadUrl(Ljava/lang/String;)V

    .line 75
    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    const-string v3, "AdMobSDK"

    const-string v2, "\'"

    .line 191
    if-nez p1, :cond_0

    .line 192
    const-string v0, "{}"

    .line 230
    :goto_0
    return-object v0

    .line 195
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 196
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 199
    check-cast p1, Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 203
    check-cast p1, Ljava/util/Map;

    .line 205
    const-string v0, "{"

    .line 206
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 211
    invoke-direct {p0, v3}, Lcom/admob/android/ads/view/AdMobWebView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-direct {p0, v0}, Lcom/admob/android/ads/view/AdMobWebView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v2, v0

    .line 218
    goto :goto_1

    .line 220
    :cond_5
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 222
    :cond_6
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    .line 223
    check-cast p1, Lorg/json/JSONObject;

    .line 225
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 227
    :cond_7
    const-string v0, "AdMobSDK"

    const/4 v0, 0x5

    invoke-static {v3, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create JSON from object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_8
    const-string v0, ""

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/ref/WeakReference;)Lcom/admob/android/ads/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/admob/android/ads/ae;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/admob/android/ads/ae;

    invoke-direct {v0, p0, p1}, Lcom/admob/android/ads/ae;-><init>(Lcom/admob/android/ads/view/AdMobWebView;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/admob/android/ads/view/AdMobWebView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/admob/android/ads/view/AdMobWebView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 148
    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 152
    :cond_0
    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const-string v3, "AdMobSDK"

    .line 155
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 157
    const-string v1, ""

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 159
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-direct {p0, v2}, Lcom/admob/android/ads/view/AdMobWebView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:admob."

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    const-string v1, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending url to webView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/admob/android/ads/view/AdMobWebView;->c:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/admob/android/ads/view/AdMobWebView;->a:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#sdk_close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 109
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/admob/android/ads/view/AdMobWebView;->a()V

    .line 139
    return-void
.end method
