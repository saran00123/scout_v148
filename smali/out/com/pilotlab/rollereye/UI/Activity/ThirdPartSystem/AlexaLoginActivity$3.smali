.class Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;
.super Landroid/webkit/WebViewClient;
.source "AlexaLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 173
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x202

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_70

    const/4 p1, 0x0

    const-string v0, "&"

    .line 179
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AuthCode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;Ljava/lang/String;)V

    :cond_70
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 166
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 167
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x201

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 10

    .line 148
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    const p3, 0x7f11003e

    invoke-virtual {p1, p3}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3$1;

    invoke-direct {v3, p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;Landroid/webkit/SslErrorHandler;)V

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    const p3, 0x7f110007

    .line 154
    invoke-virtual {p1, p3}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3$2;

    invoke-direct {v5, p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;Landroid/webkit/SslErrorHandler;)V

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 140
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
