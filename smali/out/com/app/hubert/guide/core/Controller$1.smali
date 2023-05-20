.class Lcom/app/hubert/guide/core/Controller$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/hubert/guide/core/Controller;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/hubert/guide/core/Controller;

.field final synthetic val$showed:I


# direct methods
.method constructor <init>(Lcom/app/hubert/guide/core/Controller;I)V
    .registers 3

    .line 106
    iput-object p1, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    iput p2, p0, Lcom/app/hubert/guide/core/Controller$1;->val$showed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->access$000(Lcom/app/hubert/guide/core/Controller;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->access$000(Lcom/app/hubert/guide/core/Controller;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_53

    .line 112
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/app/hubert/guide/core/Controller;->access$102(Lcom/app/hubert/guide/core/Controller;I)I

    .line 113
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->access$200(Lcom/app/hubert/guide/core/Controller;)V

    .line 114
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->access$300(Lcom/app/hubert/guide/core/Controller;)Lcom/app/hubert/guide/listener/OnGuideChangedListener;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 115
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->access$300(Lcom/app/hubert/guide/core/Controller;)Lcom/app/hubert/guide/listener/OnGuideChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-interface {v0, v1}, Lcom/app/hubert/guide/listener/OnGuideChangedListener;->onShowed(Lcom/app/hubert/guide/core/Controller;)V

    .line 117
    :cond_32
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->access$400(Lcom/app/hubert/guide/core/Controller;)V

    .line 118
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->access$600(Lcom/app/hubert/guide/core/Controller;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v1}, Lcom/app/hubert/guide/core/Controller;->access$500(Lcom/app/hubert/guide/core/Controller;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/app/hubert/guide/core/Controller$1;->val$showed:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 110
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "there is no guide to show!! Please add at least one Page."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
