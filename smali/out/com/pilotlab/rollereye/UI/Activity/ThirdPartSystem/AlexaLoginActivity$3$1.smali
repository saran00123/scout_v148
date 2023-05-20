.class Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3$1;
.super Ljava/lang/Object;
.source "AlexaLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;Landroid/webkit/SslErrorHandler;)V
    .registers 3

    .line 148
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 152
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
