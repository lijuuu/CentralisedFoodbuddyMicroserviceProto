# Centralized FoodBuddy Microservice Proto Repository

## Single Source of Truth for Protocol Buffers

This repository is the **single source of truth** for all Protocol Buffer definitions across the FoodBuddy microservices ecosystem. Centralizing our proto definitions ensures:

- **Consistency**: Uniform data structures and service definitions across all microservices.
- **Version Control**: Service interface changes are tracked and versioned in one place.
- **Simplified Dependencies**: Services import proto definitions from a reliable source.
- **Reduced Duplication**: Avoids divergent proto definitions across services.
- **Easier Maintenance**: Updates to shared interfaces are propagated efficiently.

## Repository Purpose

This centralized repository addresses common microservice challenges:

1. **Interface Drift Prevention**: Ensures compatible versions of interfaces across services.
2. **Change Management**: Makes service contract changes visible to all stakeholders.
3. **Development Efficiency**: Enables quick implementation of new services with established interfaces.
4. **Documentation**: Acts as living documentation for all service interfaces.

## Service Definitions

### 1. Admin Auth Service (`/Admin`)
- System administration and configuration management.

### 2. User Service (`/User`)
- User profile management.
- Authentication and authorization.
- User preferences and settings.

### 3. Restaurant Service (`/Restaurant`)
- Restaurant profile management.
- Menu and inventory management.
- Availability and operating hours.

### 4. OrderCart Service (`/OrderCart`)
- Shopping cart operations.
- Order processing.
- Order status tracking.

## Usage in FoodBuddy Ecosystem

### How to Import
1. Add this repository as a submodule or dependency in your service:
   ```bash
   git submodule add https://github.com/liju-github/CentralisedFoodbuddyMicroserviceProto
   ```

2. Generate code from proto definitions:
   ```bash
   make generate-proto
   ```

## Technical Setup

### Prerequisites
- Go 1.22.7+
- Protocol Buffers compiler
- Make

### Installation
1. Initialize the environment:
   ```bash
   make init
   ```

2. Install required tools:
   ```bash
   make install-tools
   ```

3. Generate code from proto definitions:
   ```bash
   make generate-proto
   ```

4. Update dependencies:
   ```bash
   make tidy
   ```

5. Or run all steps at once:
   ```bash
   make all
   ```

## Best Practices

### Proto Design
- Keep messages focused and single-purpose.
- Use clear, descriptive field names.
- Include field documentation.
- Follow [Google's Protocol Buffer Style Guide](https://developers.google.com/protocol-buffers/docs/style).

### Version Management
- Create new versions for breaking changes.
- Maintain backward compatibility when possible.
- Document changes in `CHANGELOG.md`.

### Integration
- Use tagged versions in production.
- Test interface changes across all services.
- Maintain comprehensive integration tests.

## Dependencies
- `google.golang.org/grpc v1.68.0`
- `google.golang.org/protobuf v1.35.2`


## Support
For questions or issues:
- Open an issue in this repository.
