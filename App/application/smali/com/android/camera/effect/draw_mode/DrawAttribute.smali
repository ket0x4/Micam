.class public abstract Lcom/android/camera/effect/draw_mode/DrawAttribute;
.super Ljava/lang/Object;
.source "DrawAttribute.java"


# instance fields
.field protected mTarget:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 0

    .line 20
    iget p0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return p0
.end method
