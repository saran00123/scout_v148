.class Lcom/app/hubert/guide/core/Controller$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/app/hubert/guide/core/GuideLayout$OnGuideLayoutDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/hubert/guide/core/Controller;->showPage(I)V
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

    .line 137
    iput-object p1, p0, Lcom/app/hubert/guide/core/Controller$2;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuideLayoutDismiss(Lcom/app/hubert/guide/core/GuideLayout;)V
    .registers 2

    .line 140
    iget-object p1, p0, Lcom/app/hubert/guide/core/Controller$2;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {p1}, Lcom/app/hubert/guide/core/Controller;->access$200(Lcom/app/hubert/guide/core/Controller;)V

    return-void
.end method
