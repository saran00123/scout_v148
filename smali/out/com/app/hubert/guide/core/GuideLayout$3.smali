.class Lcom/app/hubert/guide/core/GuideLayout$3;
.super Lcom/app/hubert/guide/listener/AnimationListenerAdapter;
.source "GuideLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/hubert/guide/core/GuideLayout;->remove()V
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

    .line 239
    iput-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout$3;->this$0:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-direct {p0}, Lcom/app/hubert/guide/listener/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 242
    iget-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout$3;->this$0:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-static {p1}, Lcom/app/hubert/guide/core/GuideLayout;->access$000(Lcom/app/hubert/guide/core/GuideLayout;)V

    return-void
.end method
