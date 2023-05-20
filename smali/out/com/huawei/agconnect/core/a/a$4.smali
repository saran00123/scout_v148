.class Lcom/huawei/agconnect/core/a/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/agconnect/core/service/auth/AuthProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/agconnect/core/a/a;->a(Lcom/huawei/agconnect/CustomAuthProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/agconnect/CustomAuthProvider;

.field final synthetic b:Lcom/huawei/agconnect/core/a/a;


# direct methods
.method constructor <init>(Lcom/huawei/agconnect/core/a/a;Lcom/huawei/agconnect/CustomAuthProvider;)V
    .registers 3

    iput-object p1, p0, Lcom/huawei/agconnect/core/a/a$4;->b:Lcom/huawei/agconnect/core/a/a;

    iput-object p2, p0, Lcom/huawei/agconnect/core/a/a$4;->a:Lcom/huawei/agconnect/CustomAuthProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTokenListener(Lcom/huawei/agconnect/core/service/auth/OnTokenListener;)V
    .registers 2

    return-void
.end method

.method public getTokens()Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/agconnect/core/service/auth/Token;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a$4;->a:Lcom/huawei/agconnect/CustomAuthProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/agconnect/CustomAuthProvider;->getTokens(Z)Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getTokens(Z)Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/agconnect/core/service/auth/Token;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a$4;->a:Lcom/huawei/agconnect/CustomAuthProvider;

    invoke-interface {v0, p1}, Lcom/huawei/agconnect/CustomAuthProvider;->getTokens(Z)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public removeTokenListener(Lcom/huawei/agconnect/core/service/auth/OnTokenListener;)V
    .registers 2

    return-void
.end method
