.class Lmoe/codeest/enviews/ENDownloadView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ENDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/codeest/enviews/ENDownloadView;->downloadAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoe/codeest/enviews/ENDownloadView;


# direct methods
.method constructor <init>(Lmoe/codeest/enviews/ENDownloadView;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$4;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 293
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$4;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmoe/codeest/enviews/ENDownloadView;->access$102(Lmoe/codeest/enviews/ENDownloadView;I)I

    .line 294
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$4;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    invoke-static {p1}, Lmoe/codeest/enviews/ENDownloadView;->access$200(Lmoe/codeest/enviews/ENDownloadView;)V

    return-void
.end method
