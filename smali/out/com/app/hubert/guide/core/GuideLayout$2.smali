.class Lcom/app/hubert/guide/core/GuideLayout$2;
.super Ljava/lang/Object;
.source "GuideLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/hubert/guide/core/GuideLayout;->addCustomToLayout(Lcom/app/hubert/guide/model/GuidePage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/hubert/guide/core/GuideLayout;


# direct methods
.method constructor <init>(Lcom/app/hubert/guide/core/GuideLayout;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout$2;->this$0:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 210
    iget-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout$2;->this$0:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-virtual {p1}, Lcom/app/hubert/guide/core/GuideLayout;->remove()V

    return-void
.end method
