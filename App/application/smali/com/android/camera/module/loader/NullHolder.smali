.class public final Lcom/android/camera/module/loader/NullHolder;
.super Ljava/lang/Object;
.source "NullHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private exception:I

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/module/loader/NullHolder;->value:Ljava/lang/Object;

    .line 29
    iput p2, p0, Lcom/android/camera/module/loader/NullHolder;->exception:I

    return-void
.end method

.method private static of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "TT;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/android/camera/module/loader/NullHolder;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/loader/NullHolder;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static final ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0xe0

    .line 12
    invoke-static {p0, v0}, Lcom/android/camera/module/loader/NullHolder;->of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public static final ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "TT;>;"
        }
    .end annotation

    .line 16
    invoke-static {p0, p1}, Lcom/android/camera/module/loader/NullHolder;->of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/android/camera/module/loader/NullHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public getException()I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/camera/module/loader/NullHolder;->exception:I

    return p0
.end method

.method public isPresent()Z
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/camera/module/loader/NullHolder;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
