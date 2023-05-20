.class Lcom/app/hubert/guide/core/Controller$3;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/app/hubert/guide/core/GuideLayout$OnGuideLayoutDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/hubert/guide/core/Controller;->showGuidePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/hubert/guide/core/Controller;


# direct methods
.method constructor <init>(Lcom/app/hubert/guide/core/Controller;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/app/hubert/guide/core/Controller$3;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuideLayoutDismiss(Lcom/app/hubert/guide/core/GuideLayout;)V
    .registers 2

    .line 163
    iget-object p1, p0, Lcom/app/hubert/guide/core/Controller$3;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {p1}, Lcom/app/hubert/guide/core/Controller;->access$700(Lcom/app/hubert/guide/core/Controller;)V

    return-void
.end method
