import 'package:flutter/material.dart';

Shadow textShadow() {
  return Shadow(
    blurRadius: 3,
    color: Colors.grey.withOpacity(0.2),
    offset: const Offset(0, 1),
  );
}
