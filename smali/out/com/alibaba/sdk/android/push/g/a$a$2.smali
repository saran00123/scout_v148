.class Lcom/alibaba/sdk/android/push/g/a$a$2;
.super Lcom/taobao/agoo/IRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/g/a$a;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/push/g/e;)Lcom/alibaba/sdk/android/push/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/push/g/e;

.field final synthetic b:Lcom/alibaba/sdk/android/push/f/c;

.field final synthetic c:Lcom/alibaba/sdk/android/push/g/a$a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/g/a$a;Lcom/alibaba/sdk/android/push/g/e;Lcom/alibaba/sdk/android/push/f/c;)V
    .registers 4

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->c:Lcom/alibaba/sdk/android/push/g/a$a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->a:Lcom/alibaba/sdk/android/push/g/e;

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->b:Lcom/alibaba/sdk/android/push/f/c;

    invoke-direct {p0}, Lcom/taobao/agoo/IRegister;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AMS]errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->a:Lcom/alibaba/sdk/android/push/g/e;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->a:Lcom/alibaba/sdk/android/push/g/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->d()Z

    move-result v6

    const/4 v3, 0x2

    const/4 v7, 0x1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/sdk/android/push/g/e;->a(IILjava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->b:Lcom/alibaba/sdk/android/push/f/c;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/f/c;->a()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 10

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "[AMS]accs init success."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->c:Lcom/alibaba/sdk/android/push/g/a$a;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->a:Lcom/alibaba/sdk/android/push/g/e;

    const/4 v3, 0x2

    const/16 v4, 0xc8

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/sdk/android/push/g/e;->a(IILjava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->b:Lcom/alibaba/sdk/android/push/f/c;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/f/c;->a()V

    return-void
.end method
