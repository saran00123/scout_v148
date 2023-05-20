.class Lcom/xiaomi/push/ak$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Lcom/xiaomi/push/ak$a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/ak$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/ak$b;->a:Lcom/xiaomi/push/ak$a;

    return-void
.end method


# virtual methods
.method a()V
    .registers 1

    return-void
.end method

.method b()V
    .registers 1

    return-void
.end method

.method public run()V
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/push/ak$b;->a()V

    iget-object v0, p0, Lcom/xiaomi/push/ak$b;->a:Lcom/xiaomi/push/ak$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/ak$a;->run()V

    invoke-virtual {p0}, Lcom/xiaomi/push/ak$b;->b()V

    return-void
.end method
