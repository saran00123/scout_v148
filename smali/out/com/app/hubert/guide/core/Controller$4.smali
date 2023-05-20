.class Lcom/app/hubert/guide/core/Controller$4;
.super Lcom/app/hubert/guide/lifecycle/FragmentLifecycleAdapter;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/hubert/guide/core/Controller;->addListenerFragment()V
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

    .line 238
    iput-object p1, p0, Lcom/app/hubert/guide/core/Controller$4;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-direct {p0}, Lcom/app/hubert/guide/lifecycle/FragmentLifecycleAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyView()V
    .registers 2

    const-string v0, "ListenerFragment.onDestroyView"

    .line 241
    invoke-static {v0}, Lcom/app/hubert/guide/util/LogUtil;->i(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$4;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-virtual {v0}, Lcom/app/hubert/guide/core/Controller;->remove()V

    return-void
.end method
