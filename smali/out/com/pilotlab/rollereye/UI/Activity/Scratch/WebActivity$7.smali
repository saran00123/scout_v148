.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 2

    .line 517
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 532
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 534
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "edit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 535
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_72

    .line 538
    :cond_22
    :try_start_22
    new-instance p1, Ljava/io/FileReader;

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 539
    new-instance p2, Ljava/io/BufferedReader;

    invoke-direct {p2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 540
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V

    .line 542
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    if-eqz v0, :cond_72

    .line 544
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2902(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "data"

    .line 546
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const-string v0, "loadCodeReq"

    const/16 v1, 0x103

    invoke-virtual {p2, v0, v1, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->makeJson(Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 548
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->native2JS(Ljava/lang/String;)V

    .line 549
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$3000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6d} :catch_6e

    goto :goto_72

    :catch_6e
    move-exception p1

    .line 552
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_72
    :goto_72
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 521
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
